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
    @settings = [
      { name: 'Wi-Fi', enabled: true },
      { name: 'Bluetooth', enabled: false },
    ]
  close: () ->
    @$mdSidenav('left').toggle()
  toggle: () ->
    @$mdSidenav('left').toggle()
    
angular
  .module('home')
  .controller 'HomeCtrl', HomeCtrl
