$ ->
  $('ul[id$="-nav"]').addClass('collapse').collapse({toggle: false})
    # parent: '#sidebar > ul > li'

  enterSection = (elem) ->
    console.log("entering view #{elem.id}!")
    $("a[href$='api##{elem.id}']").parent("li").children('ul').collapse('show')

  leaveSection = (elem) ->
    console.log("leaving view #{elem.id}!")
    $("a[href$='api##{elem.id}']").parent("li").children('ul').collapse('hide')

  $('.doc-article')
    .waypoint
      handler: (direction) ->
        $("a[href='##{@id}']").parent("li").toggleClass('active', direction == 'down')
      offset: '100%'
    .waypoint
      handler: (direction) ->
        $("a[href='##{@id}']").parent("li").toggleClass('active', direction == 'up')
      offset: ->
        -$(@).height();

#   $('.doc-section')
#     .waypoint
#       handler: (direction) ->
#         if direction == 'down'
#           enterSection()
#         else
#           leaveSection()
#       offset: '100%'
#     .waypoint
#       handler: (direction) ->
#         if direction == 'up'
#           enterSection()
#         else
#           leaveSection()
#       offset: ->
#         -$(@).height();

  $('.doc-section').on 'inview', (event, isInView, visiblePartX, visiblePartY) ->
    if isInView
      enterSection(@)
    else
      leaveSection(@)