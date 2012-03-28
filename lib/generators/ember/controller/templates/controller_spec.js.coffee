describe "<%= controller_name %> controller specs", ->
  controller = <%= application_name %>.Controllers.<%=controller_name%>

  beforeEach ->
    jasmine.Ajax.useMock()

  responses =
    success:
      status: 200
      responseText: '{"message": "success"}'
    failure:
      status: 404
      responseText: '{"error": "error"}'

  request = null

<%- routes.each do |r| %>
  describe "<%= r %>", ->
    beforeEach ->
      controller.<%= r.underscore %>()
      request = mostRecentAjaxRequest()


    describe "success", ->
      beforeEach ->
        request.response(responses.success)

      it "should be tested", ->
        pending "Add actual tests"

    describe "failure", ->
      beforeEach ->
        request.response(responses.failure)

      it "should be tested", ->
        pending "Add actual tests"
<%- end %>
