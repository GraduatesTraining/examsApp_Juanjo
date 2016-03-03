###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'avatarChange', ->
  scope = undefined
  element = undefined

  beforeEach module('home', 'home/avatar-change-directive.tpl.html')

  beforeEach inject ($compile, $rootScope) ->
    scope = $rootScope.$new()
    element = $compile(angular.element('<avatarChange></avatarChange>')) scope

  it 'should have correct text', ->
    scope.$apply()
    expect(element.isolateScope().avatarChange.name).toEqual 'avatarChange'

