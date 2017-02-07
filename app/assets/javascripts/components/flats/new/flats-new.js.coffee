#= require services/flat

app = angular.module('flatsNewComponent', ['flatService'])

app.component('flatsNew', {

  templateUrl: 'flats-new.html'

  controller: ['Flat', (Flat) ->

    @flat = new Flat
    @flat.services = []
    @flat.places   = []
    @flat.pictures = []
    @flat.isEditable = true

    @
  ]
})

@application.requires.push('flatsNewComponent')
