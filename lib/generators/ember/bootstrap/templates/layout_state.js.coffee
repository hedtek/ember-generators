<%=application_name%>.LayoutState = Ember.State.extend
  enter: (s, t) ->
    this._super(s, t)
    <%=application_name%>.Views.layout.set('content', this.contentView.create())
