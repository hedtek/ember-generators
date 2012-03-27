<%= application_name.camelize %>.Controller.create
  name: '<%= controller_name %>'

  <%- routes.each do |route| %>
  <%= route.underscore %>: ->
    # Handle click or submit events from view here
  <%- end %>

  state: Ember.State.create
  <%- routes.each do |route| %>
    <%= route.underscore %>: <%= application_name.camelize %>.LayoutState.create
      route: '<%= route %>'
      contentView: <%= application_name.camelize %>.Views.<%= controller_name %>.<%= route.underscore %>

  <%- end %>
