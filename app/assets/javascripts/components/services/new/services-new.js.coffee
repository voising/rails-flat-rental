#= require services/service

app = angular.module 'servicesNewComponent', ['serviceService']

app.component('servicesNew', {

  bindings:
    services: '='

  templateUrl: 'services-new.html'

  controller: ['Service', '$mdDialog',
    (Service, $mdDialog) ->

      ctrl = @

      # Dialog

      @openAddServiceDialog = ->
        $mdDialog.show
          parent:        angular.element(document.body)
          templateUrl:   'dialog/services-new.html'
          controllerAs:  '$ctrl'
          controller:    ['$mdDialog', ($mdDialog) ->

            dialog = @

            # Selectable services
            @availableServices = Service.all {}

            # Services checked in dialog
            @servicesSelected = ctrl.services

            #
            #

            # Actions

            @exists = (item, list) -> list.indexOf(item) > -1

            @toggle = (service, list) ->
              idx = list.indexOf(service)
              if idx > -1
                list.splice idx, 1
              else
                list.push service
              return

            @closeDialog = ->
              for service in dialog.servicesSelected
                ctrl.services.push service
              $mdDialog.hide()

            @
          ]



      @
  ]
})

@application.requires.push('servicesNewComponent')