app = angular.module 'flatService', ['ngResource']

app.factory 'Flat', ['$resource',
  ($resource) ->
    Item = $resource '/flats/:id.json', {id: '@id'},
      all:
        isArray: false
      update:
        method: 'PUT'
        transformRequest: (object) -> # incapsulate the object inside the conversation param
          angular.toJson flat: object
      updateAll:
        method: 'PUT'
        isArray: true
      destroy:
        method: 'DELETE'
        transformRequest: (object) -> # no payload in a destroy request
      create:
        method: 'POST'
        transformRequest: (object) -> # incapsulate the object inside the conversation param
          angular.toJson flat: object

    Item
]


