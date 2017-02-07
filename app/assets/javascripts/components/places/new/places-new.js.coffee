#= require services/place

app = angular.module 'placesNewComponent', ['placeService']

app.component('placesNew', {

  bindings:
    places: '='

  templateUrl: 'places-new.html'

  controller: ['Place', '$mdDialog',
    (Place, $mdDialog) ->

      ctrl = @
      # https://ngmap.github.io/#/!places-auto-complete.html

      @place = new Place

      #
      #

      # Callback

      @placeChanged = ->
        place = this.getPlace()
        console.log place
        console.log('location', place.geometry.location);

        ctrl.place.name = place.name
        ctrl.place.latitude = place.geometry.location.lat()
        ctrl.place.longitude = place.geometry.location.lng()
        ctrl.place.address = place.formatted_address

      #
      #

      # Actions

      @addPlace = ->
        ctrl.place.$save (place) ->
          console.log place
          ctrl.places.push place
          ctrl.place = new Place

      @addPlaceOnEnter = (e) ->
        @addPlace() if e.keyCode == 13


      @
  ]
})

@application.requires.push('placesNewComponent')