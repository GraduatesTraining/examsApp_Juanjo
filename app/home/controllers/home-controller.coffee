'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeCtrl

 # @description

###
class HomeCtrl
  $inject = ['AuthFactory1']
  constructor: (@AuthFactory1) ->
    @ctrlName = 'HomeCtrl'
    @logout = @AuthFactory1.logout
    
    
angular
  .module('home')
  .controller 'HomeCtrl', HomeCtrl
