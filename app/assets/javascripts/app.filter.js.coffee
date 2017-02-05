@application.filter('trusted', ['$sce', ($sce) ->
  (text) ->
    $sce.trustAsHtml(text)
])

@application.filter('num', ->
  (input) ->
    parseInt(input, 10)
)

@application.filter('unique', ->
  (collection, keyname) ->
    output = []
    keys = []

    angular.forEach(collection, (item) ->
      key = item[keyname]
      if (keys.indexOf(key) == -1)
        keys.push(key)
        output.push(item)
    )

    output
)