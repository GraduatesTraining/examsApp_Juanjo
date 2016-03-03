'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeCtrl

 # @description

###
class HomeCtrl
  $inject = ['AuthFactory','UserData', '$mdSidenav']
  constructor: (@AuthFactory, @$mdSidenav, @UserData) ->
    @ctrlName = 'HomeCtrl'
    @logout = @AuthFactory.logout
    @settings = [
      { name: 'Dashboard', enabled: true, icon: 'fa fa-book', route: 'home.dashboard' },
      { name: 'Exams', enabled: true, icon: 'fa fa-file-text-o', route: 'home.exams' },
      { name: 'Stats', enabled: false, icon: 'fa fa-bar-chart', route: 'home.stats' },
    ]
    @avatar = [
      { name: 'Eva', value: '1'},
      { name: 'Sharingan', value: '2'},
      { name: 'Tetsuo', value: '3'},
      { name: 'Vayne', value: '4'},
      { name: 'Luffy', value: '5'}
    ]
  close: () ->
    @$mdSidenav('left').toggle()
  toggle: () ->
    @$mdSidenav('left').toggle()
  isLoggedIn: () ->
    @AuthFactory.loggedIn

angular
  .module('home')
  .controller 'HomeCtrl', HomeCtrl
