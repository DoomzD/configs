let g:ROOT_DIRECTORY = expand('<sfile>:p:h')

execute('source ' . g:ROOT_DIRECTORY . '/' . '.vim_config/plugins.vimrc')

let g:settings_files = [
\    '.vim_config/settings/general_settings.vimrc',
\    '.vim_config/settings/ui_settings.vimrc',
\    '.vim_config/settings/color_settings.vimrc',
\    '.vim_config/settings/files_settings.vimrc',
\    '.vim_config/settings/text_settings.vimrc',
\]

for file in g:settings_files
    execute('source ' . g:ROOT_DIRECTORY . '/' . file)
endfor

let g:mappings_files = [
\    '.vim_config/mappings/edit_mappings.vimrc',
\    '.vim_config/mappings/moving_mappings.vimrc',
\    '.vim_config/mappings/spell_mappings.vimrc',
\    '.vim_config/mappings/visual_mode_mappings.vimrc',
\    '.vim_config/mappings/useful_mappings.vimrc',
\]

for file in g:mappings_files
    execute('source ' . g:ROOT_DIRECTORY . '/' . file)
endfor
