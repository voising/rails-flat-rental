#= require services/service

app = angular.module 'servicesListComponent', ['serviceService']

app.component('servicesList', {

  transclude: true

  bindings:
    services: '<'

  templateUrl: 'services-list.html'

})

@application.requires.push('servicesListComponent')