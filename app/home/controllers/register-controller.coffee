'use strict'

###*
 # @ngdoc object
 # @name home.controller:RegisterCtrl

 # @description

###
class RegisterCtrl
  @$inject=['AuthFactory', '$state', '$mdToast', '$document']
  constructor: (@AuthFactory, @$state) ->
    @ctrlName = 'RegisterCtrl'
    @form = {}
    @newUser = newUser
  showMessages: (formElem) ->
    formElem.$touched || formElem.$dirty || formElem.$submitted
  newUser = () ->
    @AuthFactory.createUser(@form)


angular
  .module('home')
  .controller 'RegisterCtrl', RegisterCtrl
