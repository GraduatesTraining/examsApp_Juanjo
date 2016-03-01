###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'RegisterCtrl', ->
  ctrl = undefined

  beforeEach module 'home'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'RegisterCtrl'

  it 'should have ctrlName as RegisterCtrl', ->
    expect(ctrl.ctrlName).toEqual 'RegisterCtrl'

