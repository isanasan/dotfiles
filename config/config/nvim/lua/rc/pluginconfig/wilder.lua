local M = {}

    function M.config()
    
    vim.cmd([[

        call wilder#enable_cmdline_enter()
        set wildcharm=<Tab>
        cmap <expr> <Tab> wilder#in_context() ? wilder#next() : "<Tab>"
        cmap <expr> <S-Tab> wilder#in_context() ? wilder#previous() : "<S-Tab>"

        " only / and ? are enabled by default
        call wilder#set_option('modes', ['/', '?', ':'])

        call wilder#set_option('renderer', wilder#popupmenu_renderer({'highlighter': wilder#basic_highlighter(),}))

    ]])
    
    end

return M
