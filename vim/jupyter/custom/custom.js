// Configure CodeMirror Keymap
require([
	'nbextensions/vim_binding/vim_binding',   // depends your installation
], function() {
  // Map jk to <Esc>
  CodeMirror.Vim.map("jk", "<Esc>", "insert");
	// Map gh gl to $ 0
	CodeMirror.Vim.map("gh", "0", "normal");
	CodeMirror.Vim.map("gl", "$", "normal");
	CodeMirror.Vim.map("gh", "0", "visual");
	CodeMirror.Vim.map("gl", "$", "visual");
});
