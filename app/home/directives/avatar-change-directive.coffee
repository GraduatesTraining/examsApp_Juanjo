'use strict'
###*
 # @ngdoc directive
 # @name home.directive:avatarChange
 # @restrict EA
 # @element

 # @description

 # @example
   <example module="home">
     <file name="index.html">
      <avatar-change></avatar-change>
     </file>
   </example>

###
class AvatarChange
  @$inject=['UtilsFactory', 'UserData']
  constructor: ->
    return {
      restrict: 'E'
      scope: {}
      templateUrl: 'home/templates/avatar-change-directive.tpl.html'
      replace: false
      controllerAs: 'avatarChange'
      controller: (@UtilsFactory, @UserData) ->
        vm = @
        vm.name = 'avatarChange'
    }

angular
  .module 'home'
  .directive 'avatarChange', AvatarChange
