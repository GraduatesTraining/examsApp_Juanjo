'use strict'

###*
 # @ngdoc object
 # @name home.controller:RegisterCtrl

 # @description

###
class RegisterCtrl
  constructor: ->
    @ctrlName = 'RegisterCtrl'
    @form = {}
    @submit = submit
  submit= () ->
    console.log @form

angular
  .module('home')
  .controller 'RegisterCtrl', RegisterCtrl
