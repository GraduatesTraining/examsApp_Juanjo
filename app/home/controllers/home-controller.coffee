'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeCtrl

 # @description

###
class HomeCtrl
  $inject = ['AuthFactory1', '$mdSidenav']
  constructor: (@AuthFactory1, @$mdSidenav) ->
    @ctrlName = 'HomeCtrl'
    @logout = @AuthFactory1.logout
  close: () ->
    @$mdSidenav('left').toggle()
  toggle: () ->
    @$mdSidenav('left').toggle()  
    
angular
  .module('home')
  .controller 'HomeCtrl', HomeCtrl
