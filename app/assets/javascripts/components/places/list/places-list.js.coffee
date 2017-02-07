#= require services/place

app = angular.module 'placesListComponent', ['placeService']

app.component('placesList', {

  bindings:
    places: '<'
    flat: '<'

  templateUrl: 'places-list.html'

  controller: ['Place', (Place) ->

    @place = new Place

    @
  ]
})

@application.requires.push('placesListComponent')