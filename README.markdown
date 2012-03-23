# Ember Rails Generators
A set of generators for rails projects using ember.js. Generators provided are:

## Installation

Add the line

    gem 'ember-generators', :git => 'https://github.com/hedtek/ember-generators.git'

to your rails Gemfile and run 'bundle install'. Then run 

    rails g ember:bootstrap

to bootstrap your application with ember and create a basic framework.

## Ember bootstrap

Bootstraps your application with a basic coffeescript framework for front-end routing, templates and views using Ember.js and some ember libraries.

## (Ember) Model

    rails g ember:model model_name [attr1:number attr2:string]

Generates an ember-resource model in app/assets/javascripts/ember/models

The ember-resource model has a schema defining the attributes the model knows about. If no type is provided, string is assumed.

## (Ember) View

    rails g ember:view controller_name view_name

Generates a view and template in app/assets/javascripts/ember/views/controller_name and app/assets/javascripts/ember/templates/controller_name

## (Ember) Controller

    rails g ember:controller controller_name [route1 route2]

Generates a controller in app/assets/javascripts/ember/controllers

The controller can be provided an array of routes. Each of these will use the route name as the fragment for reaching the state defined. The view for a route is also generated based on the controller and route names.
