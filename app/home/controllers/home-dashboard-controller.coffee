'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeDashboardCtrl

 # @description

###
class HomeDashboardCtrl
  $inject = ['FireBaseFactory', 'UtilsFactory', '$state']
  constructor: ($state, UtilsFactory, FireBaseFactory) ->
    @ctrlName = 'HomeDashboardCtrl'
    if(!FireBaseFactory.ref.getAuth())
      UtilsFactory.showToast("You should login first.")
      $state.go("home.login")


angular
  .module('home')
  .controller 'HomeDashboardCtrl', HomeDashboardCtrl
