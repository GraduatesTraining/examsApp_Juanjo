'use strict'

###*
 # @ngdoc service
 # @name home.factory:Auth

 # @description Authentication service for manage users (NEW)

###
angular
  .module 'home'
  .factory 'UtilsFactory',['$mdToast', ($mdToast) ->
    new class Utils
      constructor: () ->
        @showToast = showToast
      showToast = (message) ->
        $mdToast.show(
          $mdToast.simple()
            .textContent(message)
            .position("top right")
            .hideDelay(3000)
        )
      ]
