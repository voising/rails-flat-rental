app = angular.module('picturesNewComponent', [])

app.component('picturesNew', {

  bindings:
    picturable: '='

  templateUrl: 'pictures-new.html'

  controller: ->

    ctrl = @

    @fileInputConfig =
      uploadAsync: true
      showBrowse: false
      showCaption: true
      previewFileType: 'any'
      modal: ''
      btnLink: '<a href="{href}" tabindex="500" title="{title}" class="md-button"{status}>{icon}{label}</a>'
      btnBrowse: '<div tabindex="500" class="md-button"{status}>{icon}{label}</div>'
      removeIcon: '<i class="fa fa-trash"></i>'
      uploadIcon: '<i class="fa fa-upload"></i>'
      removeClass: 'md-button'
      uploadClass: 'md-button'
      fileActionSettings:
        showZoom: false
        removeIcon: '<i class="fa fa-trash"></i>'
        uploadIcon: '<i class="fa fa-upload"></i>'
        removeClass: 'md-button'
        uploadClass: 'md-button'
      dropZoneTitle: 'Drag & drop pictures here …'

    $('.js-angular-fileinput').on 'fileuploaded', (event, data, previewId, index) ->
      ctrl.picturable.pictures = ctrl.picturable.pictures.concat data.response.pictures
      return

    @onDestroy = ->
      $('.js-angular-fileinput').off 'fileuploaded'

    @
})

@application.requires.push('picturesNewComponent')
