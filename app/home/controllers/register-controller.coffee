'use strict'

###*
 # @ngdoc object
 # @name home.controller:RegisterCtrl

 # @description

###
class RegisterCtrl
  @$inject=['FireBaseFactory', '$state', '$mdToast', '$document']
  constructor: (@FireBaseFactory, @$state) ->
    @ctrlName = 'RegisterCtrl'
    @form = {}
    @newUser = newUser
  showMessages: (formElem) ->
    formElem.$touched || formElem.$dirty || formElem.$submitted
  newUser = () ->
    @FireBaseFactory.createUser(@form)


angular
  .module('home')
  .controller 'RegisterCtrl', RegisterCtrl
