$ ->
  $('ul[id$="-nav"]').addClass('collapse').collapse({toggle: false})

  enterSection = (e) ->
    console.log("entering view #{e.id}!")
    $("a[href$='api##{e.id}']").parent("li").children('ul').collapse('show')

  leaveSection = (e) ->
    console.log("leaving view #{e.id}!")
    $("a[href$='api##{e.id}']").parent("li").children('ul').collapse('hide')

  enterArticle = (e) ->
    $("a[href='##{e.id}']").parent("li").addClass('active')
  leaveArticle = (e) ->
    $("a[href='##{e.id}']").parent("li").removeClass('active')

  $('section.doc-section').espy (entered, state) ->
    if entered then enterSection(@) else leaveSection(@)

  $('.doc-article').espy (entered, state) ->
    if entered then enterArticle(@) else leaveArticle(@)
