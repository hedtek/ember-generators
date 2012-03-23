<%=application_name%>.Views.errors = Ember.View.extend
  templateName: 'ember/templates/partials/errors'

<%=application_name%>.Views.error = Ember.View.extend
  tagName: "div"
  classNames: ["alert", "alert-error"]

  removeError: (event)->
    <%=application_name%>.Controllers.errors.removeObject(this.get('error'))
    event.stopPropagation()
    false

<%=application_name%>.Views.layout.set('errors', <%=application_name%>.Views.errors.create())

<%=application_name%>.Views.notices = Ember.View.extend
  templateName: 'ember/templates/partials/notices'

<%=application_name%>.Views.notice = Ember.View.extend
  tagName: "div"
  classNames: ["alert", "alert-success"]

  removenotice: (event)->
    <%=application_name%>.Controllers.notices.removeObject(this.get('notice'))
    event.stopPropagation()
    false

<%=application_name%>.Views.layout.set('notices', <%=application_name%>.Views.notices.create())
