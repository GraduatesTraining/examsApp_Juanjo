###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'LoginCtrl', ->
  ctrl = undefined

  beforeEach module 'login'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'LoginCtrl'

  it 'should have ctrlName as LoginCtrl', ->
    expect(ctrl.ctrlName).toEqual 'LoginCtrl'

