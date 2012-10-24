window.MapPage = class MapPage
     constructor: (name, level) ->
          [@name,@level] = [name,level]
     add_note: (map_notes) -> @notes.push map_notes...