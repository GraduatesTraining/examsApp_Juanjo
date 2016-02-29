'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeDashboardCtrl

 # @description

###
class HomeDashboardCtrl
  $inject = ['Auth', '$state']
  constructor: (@Auth, $state) ->
    @ctrlName = 'HomeDashboardCtrl'
    if(!@Auth.ref.getAuth())
      @Auth.showToast("You should login first.")
      $state.go("home.login")

angular
  .module('home')
  .controller 'HomeDashboardCtrl', HomeDashboardCtrl
