'use strict'

###*
 # @ngdoc object
 # @name home.controller:LoginCtrl

 # @description

###
class LoginCtrl
  @$inject=['AuthFactory', '$state']
  constructor: (@AuthFactory, $state) ->
    @ctrlName = 'LoginCtrl'
    @form = {}
    @submitLogin = submitLogin
    if(@AuthFactory.ref.getAuth())
      $state.go("home.dashboard")
  submitLogin = () ->
    @AuthFactory.login(@form)

angular
  .module('home')
  .controller 'LoginCtrl', LoginCtrl
