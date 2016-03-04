'use strict'

###*
 # @ngdoc service
 # @name home.factory:Auth

 # @description Authentication service for manage users (NEW)

###
angular
  .module 'home'
  .factory 'FireBaseFactory', ['$firebaseAuth', '$state', 'UtilsFactory', ($firebaseAuth, $state, UtilsFactory) ->
    new class Auth
      constructor: () ->
        @url = "https://examsdash.firebaseio.com/users.json"
        @ref = new Firebase ("https://examsdash.firebaseio.com/")
        @auth = $firebaseAuth(@ref)
      createUser: (item) ->
        @auth.$createUser(
          email: item.email
          password: item.password).then((userData) =>
          #If register is succesfull
          delete item.password
          delete item.confPass
          UtilsFactory.showToast('User created successfully.')
          #Storing user data in users json
          @ref.child("users").child(userData.uid).set(item)
          @message = 'User created succesfully'
          $state.go("home.login")
          return
        ).catch (error) ->
          #If something went wrong
          UtilsFactory.showToast(error.message)
          return
      ]
