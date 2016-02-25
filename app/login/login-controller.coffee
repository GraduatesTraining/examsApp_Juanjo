'use strict'

###*
 # @ngdoc object
 # @name login.controller:LoginCtrl

 # @description

###
class LoginCtrl
  constructor: ->
    @ctrlName = 'LoginCtrl'

angular
  .module('login')
  .controller 'LoginCtrl', LoginCtrl
