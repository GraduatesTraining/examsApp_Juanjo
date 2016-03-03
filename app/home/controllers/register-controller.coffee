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
    @form = {
      avatar: '1'
    }
    @newUser = newUser
    @avatar = [
      { name: 'Jhin', value: '1'},
      { name: 'Sharingan', value: '2'},
      { name: 'Kyubi Senjutsu', value: '3'},
      { name: 'Vayne', value: '4'}
    ]
  showMessages: (formElem) ->
    formElem.$touched || formElem.$dirty || formElem.$submitted
  newUser = () ->
    @FireBaseFactory.createUser(@form)


angular
  .module('home')
  .controller 'RegisterCtrl', RegisterCtrl
