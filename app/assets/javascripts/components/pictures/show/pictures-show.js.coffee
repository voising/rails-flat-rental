app = angular.module('picturesShowComponent', [])

app.component('picturesShow', {

  bindings:
    pictures: '<'

  templateUrl: 'pictures-show.html'

  controller: ['$scope', ($scope) ->

    ctrl = @

    @formattedPictures = []

    @galleryConfig =
      thumbnails: true,
      imgBubbles: true,
      bgClose:    true
      bubbles:    true,
      imgAnim:    'fadeup'

    #
    #

    # Recenter when picturable is loaded

    $scope.$on "PicturableLoaded", (msg, args) ->
      console.info '▼ PicturableLoaded received'
      ctrl.formattedPictures = _.map(args.picturable.pictures, 'file')

    @
  ]
})

@application.requires.push('picturesShowComponent')
