//= require ../<%= controller_name %>_namespace
//= require_self

<%= application_name %>.Views.<%= controller_name %>.<%= view_name %> = Ember.View.extend
  templateName: 'app/assets/javascripts/ember/templates/<%= controller_name %>/<%= template_name %>
