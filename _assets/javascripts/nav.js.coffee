
$ ->
  $.waypoints('refresh')

  $('.doc-section')
    .waypoint
      handler: (direction) ->
        $("a[href='##{@id}']").parent("li").toggleClass('active', direction == 'down')
      offset: '100%'
    .waypoint
      handler: (direction) ->
        $("a[href='##{@id}']").parent("li").toggleClass('active', direction == 'up')
      offset: ->
        -$(@).height();

  $('.doc-main')
    .waypoint
      handler: (direction) ->
        $("a[href='##{@id}']").parent("li").toggleClass('active', direction == 'down')
      offset: '100%'
    .waypoint
      handler: (direction) ->
        $("a[href='##{@id}']").parent("li").toggleClass('active', direction == 'up')
      offset: ->
        -$(@).height();