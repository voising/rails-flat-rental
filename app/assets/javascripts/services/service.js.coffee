app = angular.module 'serviceService', ['ngResource']

app.factory 'Service', ['$resource',
  ($resource) ->
    Item = $resource '/services/:id.json', {id: '@id'},
      all:
        isArray: true
      update:
        method: 'PUT'
        transformRequest: (object) -> # incapsulate the object inside the conversation param
          angular.toJson service: object
      updateAll:
        method: 'PUT'
        isArray: true
      destroy:
        method: 'DELETE'
        transformRequest: (object) -> # no payload in a destroy request
      create:
        method: 'POST'
        transformRequest: (object) -> # incapsulate the object inside the conversation param
          angular.toJson service: object

    Item
]


