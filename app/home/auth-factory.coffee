'use strict'

###*
 # @ngdoc service
 # @name home.factory:Auth

 # @description

###
angular
  .module 'home'
  .factory 'Auth',['$firebaseAuth', ($firebaseAuth) ->
    AuthBase = {}
    AuthBase.ref = new Firebase ("https://examsdash.firebaseio.com/")
    AuthBase.auth = $firebaseAuth(AuthBase.ref)
    AuthBase.error = null
    AuthBase.message = null
    AuthBase.createUser = (item) ->
      AuthBase.auth.$createUser(
        email: item.email
        password: item.password).then((userData) ->
        AuthBase.message = 'User created with uid: ' + userData.uid
        return
      ).catch (error) ->
        AuthBase.error = error
        return
    AuthBase]
