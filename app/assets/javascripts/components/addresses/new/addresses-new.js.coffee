# addressable model expects
#   latitude
#   longitude
#   address

app = angular.module('addressesNewComponent', [])

app.component('addressesNew', {

  bindings:
    addressable: '='
    secondaryMarkers: '<'
    primaryMarkerIconUrl: '@?'
    secondaryMarkerIconUrl: '@?'

  templateUrl: 'addresses-new.html'

  controller: ['NgMap', (NgMap) ->

    ctrl = @

    # Home marker

    @markerIcon =
      url: @primaryMarkerIconUrl || "/marker-home.png"
      scaledSize: [70, 70],
      anchor: [35, 70]

    # Secondary marker

    @secondaryMarkerIcon =
      url: @secondaryMarkerIconUrl || "/marker-generic.png"
      scaledSize: [50, 50],
      anchor: [25, 50]

    #
    #

    # Actions

    @geocode = (address) ->
      geocoder = new google.maps.Geocoder()

      geocoder.geocode { address: address }, (results, status) ->
        if (status == google.maps.GeocoderStatus.OK)
          console.log results
          lat = results[0].geometry.location.lat()
          lng = results[0].geometry.location.lng()

          NgMap.getMap().then (map) ->
            latLng = new google.maps.LatLng(lat, lng)
            map.setCenter(latLng)
            map.setZoom(14)

          angular.merge ctrl.addressable,
            address: address
            latitude: lat
            longitude: lng

    @
  ]
})

@application.requires.push('addressesNewComponent')
