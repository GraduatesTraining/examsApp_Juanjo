###global describe, beforeEach, it, browser, expect ###
'use strict'


LoginPagePo = require './login.po'

describe 'Login page', ->
  loginPage = undefined

  beforeEach ->
    loginPage = new LoginPagePo
    browser.get '/#/login'

  it 'should say LoginCtrl', ->
    expect(loginPage.heading.getText()).toEqual 'login'
    expect(loginPage.text.getText()).toEqual 'LoginCtrl'
