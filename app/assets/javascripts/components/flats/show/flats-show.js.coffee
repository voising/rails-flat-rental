#= require services/flat

app = angular.module 'flatsShowComponent', ['flatService']

app.component('flatsShow', {

#  bindings:
#    attendees: '<'
#    user: '<'

  templateUrl: 'flats-show'

  controller: ['Flat', '$mdDialog',
    (Flat, $mdDialog) ->

      @flat = new Flat




      @
  ]
})

@application.requires.push('flatsShowComponent')