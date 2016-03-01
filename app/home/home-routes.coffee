'use strict'

angular
  .module 'home'
  .config ($stateProvider) ->
    $stateProvider
      .state 'home',
        url: '/home'
        templateUrl: 'home/templates/home.tpl.html'
        controller: 'HomeCtrl'
        controllerAs: 'home'
      .state 'home.login',
        url: '/login'
        templateUrl: 'home/templates/login.tpl.html'
        controller: 'LoginCtrl'
        controllerAs: 'login'
      .state 'home.register',
        url: '/register'
        templateUrl: 'home/templates/register.tpl.html'
        controller: 'RegisterCtrl'
        controllerAs: 'register'
