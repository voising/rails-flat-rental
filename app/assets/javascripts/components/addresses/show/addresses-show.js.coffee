# addressable model expects
#   latitude
#   longitude
#   address

app = angular.module('addressesShowComponent', [])

app.component('addressesShow', {

  bindings:
    addressable: '<'
    secondaryMarkers: '<'
    primaryMarkerIconUrl: '@?'
    secondaryMarkerIconUrl: '@?'

  templateUrl: 'addresses-show.html'

  controller: ['$scope', 'NgMap', ($scope, NgMap) ->

    ctrl = @

    NgMap.getMap().then (map) ->
      ctrl.map = map

    # Map config

    @config =
      center: [46.3345418, 12.8112263]
      zoom: 3

    # Home marker

    @markerIcon =
      url: @primaryMarkerIconUrl || "/marker-home.png"
      scaledSize: [70, 70]
      anchor: [35, 70]

    # Secondary marker

    @secondaryMarkerIcon =
      url: @secondaryMarkerIconUrl || "/marker-generic.png"
      scaledSize: [50, 50]
      anchor: [25, 50]

    #
    #

    # Actions

    @showInfo = (e, marker) ->
      ctrl.marker = marker
      ctrl.map.showInfoWindow('marker_comment', "marker_#{marker.id}")

    @hideInfo = ->
      ctrl.map.hideInfoWindow('marker_comment')

    #
    #

    # Recenter when flat is loaded

    $scope.$on "AddressableLoaded", (msg, args) ->
      console.info '▼ AddressableLoaded received'

      NgMap.getMap().then (map) ->
        ctrl.map = map
        map.setZoom(14)
        map.setCenter
          lat: args.addressable.latitude
          lng: args.addressable.longitude

    @
  ]
})

@application.requires.push('addressesShowComponent')
