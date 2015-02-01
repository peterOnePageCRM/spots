# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require leaflet
#= require leaflet.locatecontrol/dist/L.Control.Locate.min

ready = ->

  map = L.map('map',
    center: [
      gon.lat
      gon.long
    ]
    zoom: 13)
  lc = L.control.locate().addTo(map)
  # lc.start()
  # add an OpenStreetMap tile layer
  L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors').addTo map
  
  # add a marker in the given location, attach some popup content to it and open the popup
  # L.marker([gon.lat, gon.long]).addTo(map).bindPopup(gon.description).openPopup()


$(document).ready(ready)
$(document).on('page:load', ready)