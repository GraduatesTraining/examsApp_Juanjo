###global describe, beforeEach, it, browser, expect ###
'use strict'


RegisterPagePo = require './register.po'

describe 'Register page', ->
  registerPage = undefined

  beforeEach ->
    registerPage = new RegisterPagePo
    browser.get '/#/register'

  it 'should say RegisterCtrl', ->
    expect(registerPage.heading.getText()).toEqual 'register'
    expect(registerPage.text.getText()).toEqual 'RegisterCtrl'
