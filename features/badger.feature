Feature: Badge Robot

  Background:
    Given I double `hub remote -v` with stdout:
    """
origin https://github.com/doge/wow.git (fetch)
origin https://github.com/doge/wow.git (push)
    """

  Scenario: Generate default badges
    When I successfully run `badger badge`
    Then the output should contain:
    """
[![Build Status](http://b.adge.me/travis/doge/wow.svg)](https://travis-ci.org/doge/wow)
[![Coverage Status](http://b.adge.me/coveralls/doge/wow.svg)](https://coveralls.io/r/doge/wow)
[![Dependency Status](http://b.adge.me/gemnasium/doge/wow.svg)](https://gemnasium.com/doge/wow)
[![Code Climate](http://b.adge.me/codeclimate/github/doge/wow.svg)](https://codeclimate.com/github/doge/wow)
    """