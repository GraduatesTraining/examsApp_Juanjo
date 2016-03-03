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
        @avatarList = [
          { name: 'Eva', value: '1'},
          { name: 'Sharingan', value: '2'},
          { name: 'Tetsuo', value: '3'},
          { name: 'Vayne', value: '4'},
          { name: 'Luffy', value: '5'}
        ]
      showToast = (message) ->
        $mdToast.show(
          $mdToast.simple()
            .textContent(message)
            .position("top right")
            .hideDelay(3000)
        )
      ]
