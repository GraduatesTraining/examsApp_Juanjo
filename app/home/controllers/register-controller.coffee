'use strict'

###*
 # @ngdoc object
 # @name home.controller:RegisterCtrl

 # @description

###
class RegisterCtrl
  @$inject=['Auth']
  constructor: (@Auth) ->
    @ctrlName = 'RegisterCtrl'
    @form = {}
    @newUser = newUser
  newUser = () ->
    @Auth.createUser(@form)

angular
  .module('home')
  .controller 'RegisterCtrl', RegisterCtrl
