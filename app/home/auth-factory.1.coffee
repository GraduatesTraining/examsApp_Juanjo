'use strict'

###*
 # @ngdoc service
 # @name home.factory:Auth

 # @description Authentication service for manage users (NEW)

###
angular
  .module 'home'
  .factory 'AuthFactory1',['$firebaseAuth','$state', '$mdToast', '$http', '$q', ($firebaseAuth,$state, $mdToast, $http, $q) ->
    new class Auth
      constructor: () ->
        @url = "https://examsdash.firebaseio.com/users.json"
        @ref = new Firebase ("https://examsdash.firebaseio.com/")
        @auth = $firebaseAuth(@ref)
        @error = null
        @loggedIn = @ref.getAuth()?
        @message = null
        if @ref.getAuth()? then @getUserData(@ref.getAuth().uid) else @user={}
        @showToast = showToast
      showToast = (message) ->
        $mdToast.show(
          $mdToast.simple()
            .textContent(message)
            .position("top right")
            .hideDelay(3000)
        )
      getUserData: (uid) =>
        deferred = $q.defer()
        request = $http.get @url
        request.then (result) =>
          @user=result.data[uid]
      getUserinoData = (uid, url) ->
        deferred = $q.defer()
        request = $http.get url
        request.then (result) ->
          result.data[uid]
      createUser: (item) ->
        @auth.$createUser(
          email: item.email
          password: item.password).then((userData) =>
          #If register is succesfull
          delete item.password
          delete item.confPass
          @showToast('User created successfully.')
          #Storing user data in users json
          @ref.child("users").child(userData.uid).set(item)
          @message = 'User created succesfully'
          $state.go("home.login")
          return
        ).catch (error) ->
          #If something went wrong
          @error = error
          @message = error.message
          @showToast(error.message)
          return
      login: (item) =>
        @ref.authWithPassword(item , (error, authData) =>
          if (error)
            switch (error.code)
              when "INVALID_EMAIL"
                @showToast("The specified user account email is invalid.")
                return
              when "INVALID_PASSWORD"
                @showToast("The specified user account password is incorrect.")
                return
              when "INVALID_USER"
                @showToast("The specified user account does not exist.")
                return
              else
                @showToast("Error logging user in:", error)
                return
          else
            console.log "Authenticated successfully"
            @loggedIn = 1
            getUserinoData(authData.uid, @url).then((data)=>
              @user = data
              $state.go("home.dashboard")
            )
          
        )
      logout: () =>
        @ref.unauth()
        @loggedIn = 0
        @user = {}
        @showToast('User logged out. Bye!')
        $state.go("home.login")
      ]
