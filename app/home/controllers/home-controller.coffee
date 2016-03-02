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
      { name: 'Dashboard', enabled: true, icon: 'fa fa-book', route: 'home.dashboard' },
      { name: 'Exams', enabled: true, icon: 'fa fa-file-text-o', route: '' },
      { name: 'Stats', enabled: false, icon: 'fa fa-bar-chart', route: '' },
    ]
  close: () ->
    @$mdSidenav('left').toggle()
  toggle: () ->
    @$mdSidenav('left').toggle()
    
angular
  .module('home')
  .controller 'HomeCtrl', HomeCtrl
