#= require services/flat

app = angular.module 'flatsNewComponent', ['flatService']

app.component('flatsNew', {

#  bindings:
#    attendees: '<'
#    user: '<'

  templateUrl: 'flats-new'

  controller: ['Flat', '$mdDialog',
    (Flat, $mdDialog) ->

      @flat = new Flat




      @
  ]
})

@application.requires.push('flatsNewComponent')
