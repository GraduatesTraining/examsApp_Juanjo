###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'HomeDashboardCtrl', ->
  ctrl = undefined

  beforeEach module 'home'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'HomeDashboardCtrl'

  it 'should have ctrlName as HomeDashboardCtrl', ->
    expect(ctrl.ctrlName).toEqual 'HomeDashboardCtrl'

