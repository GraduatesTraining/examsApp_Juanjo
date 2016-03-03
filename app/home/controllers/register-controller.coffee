'use strict'

###*
 # @ngdoc object
 # @name home.controller:RegisterCtrl

 # @description

###
class RegisterCtrl
  @$inject=['FireBaseFactory', 'UtilsFactory', '$state', '$mdToast', '$document']
  constructor: (@FireBaseFactory, @UtilsFactory, @$state) ->
    @ctrlName = 'RegisterCtrl'
    @form = {
      avatar: '1'
    }
    @newUser = newUser
  showMessages: (formElem) ->
    formElem.$touched || formElem.$dirty || formElem.$submitted
  newUser = () ->
    @FireBaseFactory.createUser(@form)


angular
  .module('home')
  .controller 'RegisterCtrl', RegisterCtrl
