
$ ->
  $.waypoints('refresh')

  $('.doc-section')
    # .waypoint ((dir) -> $("a[href='##{@id}']").parent("li").toggleClass('active', dir == 'down')), 
    #   context: '#docs', 
    #   offset: '100%'
    # .waypoint ((dir) -> $("a[href='##{@id}']").parent("li").toggleClass('active', dir == 'up')), 
    .waypoint
      handler: (dir) -> 
        alert(dir)
      context: '#docs'
      # offset: ->
        # -$(@).height()