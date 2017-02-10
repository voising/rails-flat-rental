app = angular.module 'authCtrl', []

app.controller 'AuthCtrl', ['$scope', '$rootScope', 'Auth', '$location',
  ($scope, $rootScope, Auth, $location) ->

    Auth.currentUser().then ->
      $location.path '/flats/new'

    config =
      headers:
        'X-HTTP-Method-Override': 'POST'

    $scope.login = ->
      Auth.login($scope.user, config).then (user) ->
        $rootScope.user = user
        $location.path '/flats/new'
      , (error) ->
        console.log(error)

    $scope.register = ->
      Auth.register($scope.user, config).then (user) ->
        $rootScope.user = user
        $location.path '/flats/new'
      , (error) ->
        console.log(error)

]

@application.requires.push('authCtrl')
