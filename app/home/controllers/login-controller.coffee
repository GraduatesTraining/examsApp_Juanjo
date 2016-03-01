'use strict'

###*
 # @ngdoc object
 # @name home.controller:LoginCtrl

 # @description

###
class LoginCtrl
  @$inject=['Auth']
  constructor: (@Auth) ->
    @ctrlName = 'LoginCtrl'

angular
  .module('home')
  .controller 'LoginCtrl', LoginCtrl
