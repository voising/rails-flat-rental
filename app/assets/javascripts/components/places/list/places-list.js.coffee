#= require services/service

app = angular.module 'servicesListComponent', ['serviceService']

app.component('servicesList', {

  templateUrl: 'places-list.html'

  controller: ['Service', '$mdDialog',
    (Service, $mdDialog) ->

      @service = new Service




      @
  ]
})

@application.requires.push('servicesListComponent')