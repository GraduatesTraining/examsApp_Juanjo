###global describe, beforeEach, it, browser, expect ###
'use strict'


HomePagePo = require './home.po'

describe 'Home page', ->
  homePage = undefined

  beforeEach ->
    homePage = new HomePagePo
    browser.get '/#/home';

  it 'should say HomeCtrl', ->
    expect(homePage.heading.getText()).toEqual 'home'
    expect(homePage.text.getText()).toEqual 'HomeCtrl'
