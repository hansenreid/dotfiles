require'nvim-treesitter.configs'.setup {
    ensure_installed = {
	'bash',
	'comment',
	'css',
	'dockerfile',
	'elixir',
	'erlang',
	'go',
	'graphql',
	'heex',
	'html',
	'javascript',
	'jsdoc',
	'json',
	'lua',
	'python',
	'regex',
	'rust',
	'scss',
	'surface',
	'tsx',
	'typescript',
	'vim',
	'yaml'
    },
    highlight = { 
        enable = true 
    }
}
