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
      checkAvatar: (avatarId) ->
          @user.avatar!=avatarId
      changeAvatar: (avatarId) ->
          @user.avatar=avatarId
          FireBaseFactory.ref.child("users").child(FireBaseFactory.ref.getAuth().uid).update({avatar: avatarId})
          $log.info 'Avatar changed successfully'
          return
      ]
