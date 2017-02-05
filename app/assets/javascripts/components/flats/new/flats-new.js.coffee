#= require services/flat

app = angular.module('flatsNewComponent', ['flatService'])

app.component('flatsNew', {

  templateUrl: 'flats-new.html'

  controller: ['Flat', '$timeout', '$mdDialog', 'NgMap',
    (Flat, $timeout, $mdDialog, NgMap) ->

      ctrl = @

      @flat = new Flat
      @flat.services = []
      @flat.places = []
      @coords = {}
      @control = {}



      #
      #

      # Map

      @geocode = () ->
        ctrl.geocoder = new google.maps.Geocoder()
        ctrl.geocoder.geocode( { 'address': ctrl.flat.address }, (results, status) ->
          if (status == google.maps.GeocoderStatus.OK)
            ctrl.flat.latitude  = results[0].geometry.location.lat()
            ctrl.flat.longitude = results[0].geometry.location.lng()

            NgMap.getMap().then (map) ->
              latLng = new google.maps.LatLng(ctrl.flat.latitude, ctrl.flat.longitude)
              map.setCenter(latLng)
              map.setZoom(14)
        )

      @doneTyping = null
      @geocodeAfter500ms = ->
        $timeout.cancel ctrl.doneTyping if ctrl.doneTyping
        ctrl.doneTyping = $timeout(ctrl.geocode, 5000)

      @map =
        center: [46.3345418, 12.8112263]
        zoom: 3
        marker:
          icon: 'https://maps.gstatic.com/mapfiles/api-3/images/spotlight-poi.png'


      #
      #

      # Pictures

      @fileInputConfig =
        uploadAsync: true
        previewFileType: 'any'
        modal: ''
        btnLink: '<a href="{href}" tabindex="500" title="{title}" class="md-button"{status}>{icon}{label}</a>'
        btnBrowse: '<div tabindex="500" class="md-button"{status}>{icon}{label}</div>'
        removeIcon: '<i class="fa fa-trash"></i>'
        uploadIcon: '<i class="fa fa-upload"></i>'
        removeClass: 'md-button'
        uploadClass: 'md-button'
        zoomClass: 'md-button'
        dropZoneTitle: 'Drag & drop pictures here …'
        showCaption: true


#      @onDestroy = ->
#        $('.js-angular-fileinput').off 'fileuploaded'

      @
  ]
})

@application.requires.push('flatsNewComponent')
