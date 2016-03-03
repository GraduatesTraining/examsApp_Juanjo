'use strict'

###*
 # @ngdoc service
 # @name home.factory:Auth

 # @description Authentication service for manage users (NEW)

###
angular
  .module 'home'
  .factory 'AuthFactory',['$state', '$mdToast', '$http', '$q', '$log', 'UtilsFactory','UserData', 'FireBaseFactory', ($state, $mdToast, $http, $q, $log, UtilsFactory, UserData, FireBaseFactory) ->
    new class Auth
      constructor: () ->
        @loggedIn = FireBaseFactory.ref.getAuth()?
      login: (item) =>
        FireBaseFactory.ref.authWithPassword(item , (error, authData) =>
          if (error)
            switch (error.code)
              when "INVALID_EMAIL"
                UtilsFactory.showToast("The specified user account email is invalid.")
                return
              when "INVALID_PASSWORD"
                UtilsFactory.showToast("The specified user account password is incorrect.")
                return
              when "INVALID_USER"
                UtilsFactory.showToast("The specified user account does not exist.")
                return
              else
                UtilsFactory.showToast("Error logging user in:", error)
                return
          else
            $log.info "Authenticated successfully"
            @loggedIn = true
            UserData.getUserData(authData.uid, FireBaseFactory.url).then((data)=>
              UserData.user = data
            )
            $state.go("home.dashboard")
          
        )
      logout: () =>
        FireBaseFactory.ref.unauth()
        @loggedIn = false
        @user = {}
        UtilsFactory.showToast('User logged out. Bye!')
        $state.go("home.login")
      ]
