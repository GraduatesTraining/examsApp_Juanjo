'use strict'

###*
 # @ngdoc object
 # @name home.controller:RegisterCtrl

 # @description

###
class RegisterCtrl
  @$inject=['Auth', '$state', '$mdToast', '$document']
  constructor: (@Auth, @$state) ->
    @ctrlName = 'RegisterCtrl'
    @form = {}
    @newUser = newUser
  newUser = () ->
    @Auth.createUser(@form)


angular
  .module('home')
  .controller 'RegisterCtrl', RegisterCtrl
