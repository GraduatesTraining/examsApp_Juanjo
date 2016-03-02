'use strict'

###*
 # @ngdoc service
 # @name home.factory:Auth

 # @description Authentication service for manage users (NEW)

###
angular
  .module 'home'
  .factory 'UserData',['FireBaseFactory','$http', '$log', (FireBaseFactory,$http, $log) ->
    new class User
      constructor: () ->
        if FireBaseFactory.ref.getAuth()? then @getUserData(FireBaseFactory.ref.getAuth().uid, FireBaseFactory.url) else @user={}
      getUserData: (uid, url) =>
        request = $http.get url
        request.then (result) =>
          @user=result.data[uid]
      ]
