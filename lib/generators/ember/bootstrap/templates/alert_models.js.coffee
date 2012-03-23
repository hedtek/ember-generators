<%=application_name%>.Models.alert = Ember.Object.extend()

<%=application_name%>.addNotice = (text) ->
  notice = <%=application_name%>.Models.alert.create
    text: text

  <%=application_name%>.Controllers.notices.addObject(notice)

<%=application_name%>.addError = (text) ->
  error = <%=application_name%>.Models.alert.create
    text: text

  <%=application_name%>.Controllers.errors.addObject(error)
