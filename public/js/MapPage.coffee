window.MapPage = class MapPage
  constructor: (name, level = 1) ->
    [@name,@level] = [name,level]
    @children = []
    @notes = []
    @parent = null
  add_note: (map_notes...) -> @notes.push map_notes...
  set_parent: (map_page) ->
    @parent = map_page
    @level = @parent.level + 1
  add_children: (map_pages...) ->
    @children.push map_pages...
    c.set_parent(this) for c in @children
