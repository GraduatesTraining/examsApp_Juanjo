'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeCtrl

 # @description

###
class HomeCtrl
  $inject = ['Auth']
  constructor: (@Auth) ->
    @ctrlName = 'HomeCtrl'
    @logout = @Auth.logout
    console.log @Auth
angular
  .module('home')
  .controller 'HomeCtrl', HomeCtrl
