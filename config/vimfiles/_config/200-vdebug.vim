UsePlugin 'vdebug'

" PROJECTROOT
let g:rootmarkers = [
\	'.projectroot',
\	'docker-compose.yml',
\	'.git',
\	'.hg',
\	'.svn',
\	'.bzr',
\	'_darcs',
\	'build.xml',
\	'phpunit.xml'
\]

let g:vdebug_options= {
\    "port" : 9000,
\    "timeout" : 20,
\    "on_close" : 'detach',
\    "break_on_open" : 0,
\    "remote_path" : "",
\    "local_path" : "",
\    "debug_window_level" : 0,
\    "debug_file_level" : 0,
\    "debug_file" : "",
\    "window_arrangement" : ["DebuggerWatch", "DebuggerStack"]
\}

function! SetupDebug()
	let g:vdebug_options['path_maps'] = {'/var/www/html': call('projectroot#get', a:000)}
	" let g:vdebug_options['path_maps'] = {'/var/www/html':'C:\Users\im000556\_dev\php_server_dev\invite'}
	" Hack to override vdebug options
	source ~/.vim/plugged/vdebug/plugin/vdebug.vim
endfunction
autocmd VimEnter * :call SetupDebug()

nnoremap [vdebug]	<Nop>
nmap     <Space>d [vdebug]

let g:vdebug_keymap = {
	\"run" : "[vdebug]r",
	\"run_to_cursor" : "<F9>",
	\"step_over" : "[vdebug]n",
	\"step_into" : "[vdebug]i",
	\"step_out" : "[vdebug]o",
	\"close" : "[vdebug]c",
	\"detach" : "<F7>",
	\"set_breakpoint" : "<F10>",
	\"get_context" : "<F11>",
	\"eval_under_cursor" : "<F12>",
	\"eval_visual" : "<Leader>e",
\}

