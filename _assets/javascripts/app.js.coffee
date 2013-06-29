#= require 'vendor/jquery.min.js'
#= require 'vendor/jquery.scrollTo.min.js'

$.scrollTo(0)

$("#main-nav a[href^='#']").on 'click', (event) ->
  event.preventDefault()
  $.scrollTo(this.hash, 500)

$(window).scroll (event) ->
  event.preventDefault()
  $this = $(this)
  windowHeight  = $(window).height()
  currentHeight = $this.height() + $this.scrollTop()
  if (windowHeight < currentHeight)
    $("#arrow").show().css({"top": currentHeight - 300})
  else
    $("#arrow").hide()

$("#arrow").on 'click', (event) ->
  event.preventDefault()
  $.scrollTo('.container', 500)


$("#nav-collapse").on 'click', (event) ->
  $("#main-nav").toggleClass 'hide'
  event.preventDefault()

$(".content h2").on 'click', (event) ->
  $.scrollTo('.container', 500)
  event.preventDefault()
