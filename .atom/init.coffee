# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to make opened Markdown files always be soft wrapped:
#
# path = require 'path'
#
# atom.workspaceView.eachEditorView (editorView) ->
#   editor = editorView.getEditor()
#   if path.extname(editor.getPath()) is '.md'
#     editor.setSoftWrap(true)

# Make treeview scollbar style-able - http://discuss.atom.io/t/ugly-scrollbars-bug/1027/11
atom.workspaceView.eachEditorView () ->
  el = document.getElementsByClassName("workspace")[0];
  el.style.display = "inline-block";
  setTimeout( ->
    el.style.display = "block";
  , 50)
