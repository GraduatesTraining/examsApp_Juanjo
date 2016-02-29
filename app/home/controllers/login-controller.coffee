'use strict'

###*
 # @ngdoc object
 # @name home.controller:LoginCtrl

 # @description

###
class LoginCtrl
  @$inject=['AuthFactory1', '$state']
  constructor: (@AuthFactory1, $state) ->
    @ctrlName = 'LoginCtrl'
    console.log @AuthFactory1
    @form = {}
    @submitLogin = submitLogin
    if(@AuthFactory1.ref.getAuth())
      $state.go("home.dashboard")
  submitLogin = () ->
    @AuthFactory1.login(@form)

angular
  .module('home')
  .controller 'LoginCtrl', LoginCtrl
