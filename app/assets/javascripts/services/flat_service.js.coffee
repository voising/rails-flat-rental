app = angular.module 'flatServiceService', ['ngResource']

app.factory 'FlatService', ['$resource',
  ($resource) ->
    Item = $resource '/flats_services/:id.json', {id: '@id'},
      all:
        isArray: true
      update:
        method: 'PUT'
        transformRequest: (object) -> # incapsulate the object inside the conversation param
          angular.toJson flats_service: object
      updateAll:
        method: 'PUT'
        isArray: true
      destroy:
        method: 'DELETE'
        transformRequest: (object) -> # no payload in a destroy request
      create:
        method: 'POST'
        transformRequest: (object) -> # incapsulate the object inside the conversation param
          angular.toJson flats_service: object

    Item
]


