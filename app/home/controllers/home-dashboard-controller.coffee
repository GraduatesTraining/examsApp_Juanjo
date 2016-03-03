'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeDashboardCtrl

 # @description

###
class HomeDashboardCtrl
  $inject = ['AuthFactory', 'FireBaseFactory', 'UtilsFactory', '$state', '$mdSidenav']
  constructor: (@AuthFactory, $state, @$mdSidenav, UtilsFactory, FireBaseFactory) ->
    @ctrlName = 'HomeDashboardCtrl'
    if(!FireBaseFactory.ref.getAuth())
      UtilsFactory.showToast("You should login first.")
      $state.go("home.login")


angular
  .module('home')
  .controller 'HomeDashboardCtrl', HomeDashboardCtrl
