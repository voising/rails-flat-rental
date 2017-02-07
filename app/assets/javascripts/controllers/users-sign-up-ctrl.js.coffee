app = angular.module 'usersSignUpCtrl', []

app.controller 'UsersSignUpCtrl', ['$scope', 'Auth', ($scope, Auth) ->

    $scope.register = ->
      Auth.register($scope.credentials).then (user) ->
        console.log(user)
      , (error) ->
        console.log(error)

]

@application.requires.push('usersSignUpCtrl')
