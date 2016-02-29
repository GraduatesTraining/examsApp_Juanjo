###global describe, beforeEach, it, browser, expect ###
'use strict'


HomeDashboardPagePo = require './home-dashboard.po'

describe 'Home dashboard page', ->
  homeDashboardPage = undefined

  beforeEach ->
    homeDashboardPage = new HomeDashboardPagePo
    browser.get '/#/dashboard'

  it 'should say HomeDashboardCtrl', ->
    expect(homeDashboardPage.heading.getText()).toEqual 'homeDashboard'
    expect(homeDashboardPage.text.getText()).toEqual 'HomeDashboardCtrl'
