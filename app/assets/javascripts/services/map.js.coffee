app = angular.module 'mapService', []

app.service 'Map', ['NgMap',
  (NgMap) ->

    # Config when just loaded

    @config =
      center: [46.3345418, 12.8112263]
      zoom: 3

    # Home marker

    @markerHomeIcon =
      url: '/marker.png'
      scaledSize: [70, 70],
      anchor: [35, 70]

    #
    #

    # Actions

    @geocode = (address, callback) ->
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

          callback { latitude: lat, longitude: lng } if callback

    @
]


