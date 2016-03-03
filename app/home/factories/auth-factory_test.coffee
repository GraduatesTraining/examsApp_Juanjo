###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'Auth', ->
  factory = undefined

  beforeEach module 'home'

  beforeEach inject (Auth) ->
    factory = Auth

  it 'should have someValue be Auth', ->
    expect(factory.someValue).toEqual 'Auth'

  it 'should have someMethod return Auth', ->
    expect(factory.someMethod()).toEqual 'Auth'
