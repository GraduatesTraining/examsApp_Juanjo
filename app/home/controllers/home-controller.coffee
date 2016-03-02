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
      { name: 'Exams', enabled: true, icon: 'fa fa-file-text-o', route: 'home.exams' },
      { name: 'Stats', enabled: false, icon: 'fa fa-bar-chart', route: 'home.stats' },
    ]
  close: () ->
    @$mdSidenav('left').toggle()
  toggle: () ->
    @$mdSidenav('left').toggle()
  isLoggedIn: (num) ->
    if num is 0
      @AuthFactory1.loggedIn
    else 
      not @AuthFactory1.loggedIn
angular
  .module('home')
  .controller 'HomeCtrl', HomeCtrl
