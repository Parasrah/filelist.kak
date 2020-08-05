provide-module filelist %§
    declare-option str-list filelist '' -docstring 'A list of files'

    declare-option -hidden str-list filelist-ordered ''

    declare-option -hidden str filelist-current ''

    define-command filelist-next -docstring 'Go to next file from filelist' %{
    }

    define-command filelist-previous -docstring 'Go to previous file from filelist' %{
    }

    define-command filelist-add -params 1 -file-completion -docstring 'Add a file to filelist' %{
        set-option global -add filelist %arg{1} 
    }

    define-command filelist-clear -docstring 'Clear the filelist' %{
        set-option global filelist ''
    }

    define-command filelist-set -docstring 'Set the filelist' %{
    }

    hook global WinSetOption filelist=(.*) %{
        # TODO: propagate to filelist-ordered
    }

    define-command filelistdo -params 1 -docstring 'Play the contents of register as a macro on files in filelist' %{
        # TODO: how to get completion for register?
    }
§
