Assessment.routeManager = Ember.RouteManager.create(Assessment.controllerRouteMap(Assessment.Controllers))

Assessment.loadLocation()

# Use data-route attributes for navigation purposes
$(document).on "click", "[data-route]", ->
  Assessment.goto($(this).attr("data-route"))
  event.stopPropagation()
  false
