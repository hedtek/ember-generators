//= require ../<%= controller_name %>_namespace
//= require_self

<%= application_name %>.Views.<%= controller_name %>.<%= view_name.underscore %> = Ember.View.extend
  templateName: 'ember/templates/<%= controller_name %>/<%= template_name %>'

  submit: (event) ->
    <%= application_name %>.Controllers.<%= controller_name %>.<%= view_name.underscore %>()
    event.stopPropagation()
    false

  click: (event) ->
    <%= application_name %>.Controllers.<%= controller_name %>.<%= view_name.underscore %>()
    event.stopPropagation()
    false
