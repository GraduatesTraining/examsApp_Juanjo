'use strict'

###*
 # @ngdoc service
 # @name home.factory:Auth

 # @description

###
angular
  .module 'home'
  .factory 'Auth',['$firebaseAuth','$state', '$mdToast', ($firebaseAuth,$state, $mdToast) ->
    AuthBase = {}
    AuthBase.ref = new Firebase ("https://examsdash.firebaseio.com/")
    AuthBase.auth = $firebaseAuth(AuthBase.ref)
    AuthBase.error = null
    AuthBase.message = null
    AuthBase.showToast = (message) ->
      $mdToast.show(
        $mdToast.simple()
          .textContent(message)
          .position("top right")
          .hideDelay(3000)
      )
    AuthBase.createUser = (item) ->
      AuthBase.auth.$createUser(
        email: item.email
        password: item.password).then((userData) ->
        delete item.confPass
        AuthBase.showToast('User created successfully.')
        AuthBase.ref.child("users").child(userData.uid).set(item);
        AuthBase.message = 'User created with uid: ' + userData.uid
        $state.go("home.login")
        return
      ).catch (error) ->
        AuthBase.error = error
        AuthBase.message = error.message
        AuthBase.showToast(error.message)
        return
    AuthBase]
