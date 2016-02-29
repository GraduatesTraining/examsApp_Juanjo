'use strict'

###*
 # @ngdoc object
 # @name home.controller:HomeDashboardCtrl

 # @description

###
class HomeDashboardCtrl
  $inject = ['AuthFactory1', '$state']
  constructor: (@AuthFactory1, $state) ->
    @ctrlName = 'HomeDashboardCtrl'
    if(!@AuthFactory1.ref.getAuth())
      @AuthFactory1.showToast("You should login first.")
      $state.go("home.login")

angular
  .module('home')
  .controller 'HomeDashboardCtrl', HomeDashboardCtrl
