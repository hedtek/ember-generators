<%=application_name%>.controllerRouteMap = (controllerSource) ->
  controllers = {}
  controllers[controllerName] = controllerSource.get(controllerName).state for controllerName in controllerSource.controllers
  controllers

<%=application_name%>.loadLocation = (location, routeManager) ->
  <%=application_name%>.goto((location || window.location).hash || 'home', routeManager)

<%=application_name%>.goto = (location, routeManager) ->
  (routeManager || <%=application_name%>.routeManager).set('location', location)
