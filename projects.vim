function! ProjectOpen(arg)
	let arg = a:arg
	let found = "false"
	for project in g:projects
		let project_name = get(project, 0)
		let project_path = get(project, 1)
		let project_python_libs = get(project, 2, [])

		if project_name == arg
			exe 'cd '.project_path.'/git/'
			NERDTreeCWD
			python import vim; activate_this = '%s/bin/activate_this.py' % vim.eval('project_path')
			for lib in project_python_libs
				python import sys,vim; sys.path.append(vim.eval('lib'))
				echom 'Path '.lib.' has been added'
			endfor
			echom 'Project '.project[0].' has been activated - '.project_path
			let found = "true"
		endif 
	endfor 
	if found == "false"
		echom 'Project '.a:arg.' can not be found!'
	endif 
endfunction

function! ProjectNames(prefix)
    let venvs = []
	for project in g:projects
		if len(a:prefix) == 0
        	call add(venvs, project[0])
		elseif match(project[0], a:prefix) >= 0
        	call add(venvs, project[0])
        endif
    endfor
    return venvs
endfunction

command! -bar -nargs=? -complete=customlist,s:CompleteVirtualEnv ProjectOpen :call ProjectOpen(<q-args>)
function! s:CompleteVirtualEnv(arg_lead, cmd_line, cursor_pos)
    return ProjectNames(a:arg_lead)
endfunction
