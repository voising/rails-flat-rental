app = angular.module 'usersSignInCtrl', []

app.controller 'UsersSignInCtrl', ['$scope', 'Auth', ($scope, Auth) ->

    $scope.login = ->
      console.log 'LOGGING..'
      Auth.login($scope.credentials).then (user) ->
        console.log(user)
      , (error) ->
        console.log(error)

]

@application.requires.push('usersSignInCtrl')
