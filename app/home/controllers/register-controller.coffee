'use strict'

###*
 # @ngdoc object
 # @name home.controller:RegisterCtrl

 # @description

###
class RegisterCtrl
  @$inject=['AuthFactory1', '$state', '$mdToast', '$document']
  constructor: (@AuthFactory1, @$state) ->
    @ctrlName = 'RegisterCtrl'
    @form = {}
    @newUser = newUser
  newUser = () ->
    @AuthFactory1.createUser(@form)


angular
  .module('home')
  .controller 'RegisterCtrl', RegisterCtrl
