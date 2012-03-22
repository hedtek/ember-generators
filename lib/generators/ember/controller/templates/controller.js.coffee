<%= application_name.camelize %>.Controller.create
  name: '<%= controller_name %>'

  state: Ember.State.create
  <%- routes.each do |route| %>
    <%= route %>: <%= application_name.camelize %>.LayoutState.create
      route: '<%= route %>'
      contentView: <%= application_name.camelize %>.Views.<%= route %>

  <%- end %>
