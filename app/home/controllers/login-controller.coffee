'use strict'

###*
 # @ngdoc object
 # @name home.controller:LoginCtrl

 # @description

###
class LoginCtrl
  @$inject=['Auth', '$state']
  constructor: (@Auth, $state) ->
    @ctrlName = 'LoginCtrl'
    @form = {}
    @submitLogin = submitLogin
    if(@Auth.ref.getAuth())
      $state.go("home.dashboard")
  submitLogin = () ->
    @Auth.login(@form)

angular
  .module('home')
  .controller 'LoginCtrl', LoginCtrl
