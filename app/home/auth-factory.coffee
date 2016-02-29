'use strict'

###*
 # @ngdoc service
 # @name home.factory:Auth

 # @description Authentication service for manage users

###
angular
  .module 'home'
  .factory 'Auth',['$firebaseAuth','$state', '$mdToast', ($firebaseAuth,$state, $mdToast) ->
    AuthBase = {}
    AuthBase.ref = new Firebase ("https://examsdash.firebaseio.com/")
    AuthBase.auth = $firebaseAuth(AuthBase.ref)
    AuthBase.error = null
    AuthBase.loggedIn = null
    AuthBase.message = null
    AuthBase.userData = {}
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
        #If register is succesfull
        delete item.confPass
        AuthBase.showToast('User created successfully.')
        #Storing user data in users json
        AuthBase.ref.child("users").child(userData.uid).set(item)
        AuthBase.message = 'User created succesfully'
        $state.go("home.login")
        return
      ).catch (error) ->
        #If something went wrong
        AuthBase.error = error
        AuthBase.message = error.message
        AuthBase.showToast(error.message)
        return
    AuthBase.login = (item) ->
      AuthBase.ref.authWithPassword(item , (error, authData) ->
        if (error)
          switch (error.code)
            when "INVALID_EMAIL"
              console.log("The specified user account email is invalid.")
              return
            when "INVALID_PASSWORD"
              console.log("The specified user account password is incorrect.")
              return
            when "INVALID_USER"
              console.log("The specified user account does not exist.")
              return
            else
              console.log("Error logging user in:", error)
              return
        else
          console.log "Authenticated successfully"
          AuthBase.loggedIn = 1
          $state.go("home.dashboard")
          return
        
      )
    AuthBase.logout = () ->
      AuthBase.ref.unauth()
      AuthBase.loggedIn = 0
      AuthBase.showToast('User logged out. Bye!')
      $state.go("home.login")
    AuthBase]
