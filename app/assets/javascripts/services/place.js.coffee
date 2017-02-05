app = angular.module 'placeService', ['ngResource']

app.factory 'Place', ['$resource',
  ($resource) ->
    Item = $resource '/places/:id.json', {id: '@id'},
      all:
        isArray: true
      update:
        method: 'PUT'
        transformRequest: (object) -> # incapsulate the object inside the conversation param
          angular.toJson place: object
      updateAll:
        method: 'PUT'
        isArray: true
      destroy:
        method: 'DELETE'
        transformRequest: (object) -> # no payload in a destroy request
      create:
        method: 'POST'
        transformRequest: (object) -> # incapsulate the object inside the conversation param
          angular.toJson place: object

    Item
]


