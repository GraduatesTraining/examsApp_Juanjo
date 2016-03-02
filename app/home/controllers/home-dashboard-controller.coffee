'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeDashboardCtrl

 # @description

###
class HomeDashboardCtrl
  $inject = ['AuthFactory', '$state', '$mdSidenav']
  constructor: (@AuthFactory, $state, @$mdSidenav) ->
    @ctrlName = 'HomeDashboardCtrl'
    if(!@AuthFactory.ref.getAuth())
      @AuthFactory.showToast("You should login first.")
      $state.go("home.login")


angular
  .module('home')
  .controller 'HomeDashboardCtrl', HomeDashboardCtrl
