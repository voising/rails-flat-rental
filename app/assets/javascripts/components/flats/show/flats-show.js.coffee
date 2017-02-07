#= require services/flat

app = angular.module 'flatsShowComponent', ['flatService']

app.component('flatsShow', {

  templateUrl: 'flats-show.html'

  controller: ['$scope', '$timeout', 'Flat', '$routeParams',
    ($scope, $timeout, Flat, $routeParams) ->

      @flat = Flat.get {id: $routeParams.id}, (flat) ->
        $timeout ->
          console.info '▲ AddressableLoaded broadcasted'
          $scope.$broadcast('AddressableLoaded', {addressable: flat})

          console.info '▲ PicturableLoaded broadcasted'
          $scope.$broadcast('PicturableLoaded', {picturable: flat})
        , 0

      @
  ]
})

@application.requires.push('flatsShowComponent')