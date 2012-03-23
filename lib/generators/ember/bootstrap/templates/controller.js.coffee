<%=application_name%>.Controller = Ember.Object.extend
  init: ->
    this._super()
    <%=application_name%>.Controllers.addController(this.get('name'), this)
