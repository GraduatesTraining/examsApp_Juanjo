'use strict'

###*
 # @ngdoc object
 # @name home.controller:LoginCtrl

 # @description

###
class LoginCtrl
  @$inject=['AuthFactory','FireBaseFactory', '$state']
  constructor: (@AuthFactory, @FireBaseFactory, $state) ->
    @ctrlName = 'LoginCtrl'
    @form = {}
    @submitLogin = submitLogin
    if(@FireBaseFactory.ref.getAuth())
      $state.go("home.dashboard")
  submitLogin = () ->
    @AuthFactory.login(@form)

angular
  .module('home')
  .controller 'LoginCtrl', LoginCtrl
