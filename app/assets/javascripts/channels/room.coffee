App.room = @redis.subscribe("RoomChannel"),
  connected: ->
    # Called when the subscription is ready for use on the server
    messageContainer = $('#messages')
    height = messageContainer[0].scrollHeight
    messageContainer.scrollTop height

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    messageContainer = $('#messages')
    messageContainer.append data['message']
    height = messageContainer[0].scrollHeight
    messageContainer.scrollTop height

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.room.speak event.target.value
    event.target.value = ''
    event.preventDefault()
