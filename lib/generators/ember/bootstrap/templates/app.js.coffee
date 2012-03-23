#= require_self
#= require_tree ./lib
#= require_tree ./models
#= require_tree ./templates
#= require_tree ./views/layouts
#= require_tree ./views/partials
#= require_tree ./views
#= require_tree ./controllers
#= require_tree ./helpers
#= require ./route_manager

window.<%= application_name %> = Ember.Application.create()

<%= application_name %>.Controllers = Ember.Object.create
  controllers: []
  addController: (name, controller) ->
    this.set(name, controller)
    this.controllers.push(name)

<%= application_name%>.Views = Ember.Object.create()

<%= application_name %>.Models = Ember.Object.create()
