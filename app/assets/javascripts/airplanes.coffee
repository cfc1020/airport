$ ->
  client = new Faye.Client('https://airport-app-cfc9209.c9.io/faye')

  client.subscribe '/states', (payload) ->
    # debug info
    console.log(payload)

    # message = JSON.parse(payload.message)
    # debugger

    $("#airplane_#{payload.airplane_id}").replaceWith(payload.message)

    # Здесь должен быть какой-нибудь js-фоеймворк и мы дергаем какой-нибудь ивент
    # Если необходимо, то я могу добавить, например, backbone.js

    return
