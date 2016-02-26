'use strict'

###*
 # @ngdoc object
 # @name home.controller:LoginCtrl

 # @description

###
class LoginCtrl
  constructor: ->
    @ctrlName = 'LoginCtrl'

angular
  .module('home')
  .controller 'LoginCtrl', LoginCtrl
