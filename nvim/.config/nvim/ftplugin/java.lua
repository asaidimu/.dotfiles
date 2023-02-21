local home = os.getenv('HOME')
local jdtls = require('jdtls')
local root_dir = require('jdtls.setup').find_root({ '.git', 'gradlew', 'mvnw',})
local workspace_folder = home .. "/.local/share/eclipse/workspaces/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")
-- local top = string.sub(require('jdtls.setup').find_root({ 'gradlew', 'mvnw', '.git' }), 0, -(string.len(vim.fn.fnamemodify(root_dir, ":p:h:t"))+2)) .. "/workspaces"

local nnoremap = function(rhs, lhs, bufopts, desc)
  bufopts.desc = desc
  vim.keymap.set("n", rhs, lhs, bufopts)
end

local on_attach = function(_, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    nnoremap('=', function() vim.lsp.buf.format { async = true } end, bufopts, "Format file")
    nnoremap('gD', vim.lsp.buf.declaration, bufopts, "Go to declaration")
    nnoremap('gd', vim.lsp.buf.definition, bufopts, "Go to definition")
    nnoremap("go", jdtls.organize_imports, bufopts, "Organize imports")

    -- Java extensions provided by jdtls
    -- nnoremap("gi", jdtls.organize_imports, bufopts, "Organize imports")
    --[[ nnoremap("<space>ev", jdtls.extract_variable, bufopts, "Extract variable")
    nnoremap("<space>ec", jdtls.extract_constant, bufopts, "Extract constant") ]]
    -- vim.keymap.set('v', "<space>em", [[<ESC><CMD>lua require('jdtls').extract_method(true)<CR>]],
    -- { noremap=true, silent=true, buffer=bufnr, desc = "Extract method" })

end

local config = {
    on_attach = on_attach,
    cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xmx1G',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        '-jar', '/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
        '-configuration', home .. '/.local/share/eclipse/config_linux',
        '-data', workspace_folder
    },
    root_dir = root_dir,
    settings = {
        java = {
            format = {
                url = home .. "/.local/share/eclipse/eclipse-java-google-style.xml",
                profile = "GoogleStyle",
            },
            signatureHelp = { enabled = true },
            completion = {
                favoriteStaticMembers = {
                    "org.hamcrest.MatcherAssert.assertThat",
                    "org.hamcrest.Matchers.*",
                    "org.hamcrest.CoreMatchers.*",
                    "org.junit.jupiter.api.Assertions.*",
                    "java.util.Objects.requireNonNull",
                    "java.util.Objects.requireNonNullElse",
                    "org.mockito.Mockito.*"
                },
                filteredTypes = {
                    "com.sun.*",
                    "io.micrometer.shaded.*",
                    "java.awt.*",
                    "jdk.*", "sun.*",
                },
            },
            -- Specify any options for organizing imports
            sources = {
                organizeImports = {
                    starThreshold = 9999;
                    staticStarThreshold = 9999;
                },
            },
            -- How code generation should act
            codeGeneration = {
                toString = {
                    template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
                },
                hashCodeEquals = {
                    useJava7Objects = true,
                },
                useBlocks = true,
            },
        }
    }
}

jdtls.start_or_attach(config)
