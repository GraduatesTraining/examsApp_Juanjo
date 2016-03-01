'use strict'

angular
  .module 'examsDash'
  .config ($urlRouterProvider) ->
    $urlRouterProvider.otherwise 'home/login'
