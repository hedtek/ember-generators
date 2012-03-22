<%= application_name.camelize %>.Controller.create
  name: '<%= controller_name %>'

  state: Ember.State.create
    example: <%= application_name.camelize %>.LayoutState.create
      route: '<%= controller_name %>'
      contentView: <%= application_name.camelize %>.Views.<%= controller_name %>
