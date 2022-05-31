Feature: Start of application

  Background:
    Given the app is running

  Scenario: As a User I want to see buttons with different options
    Then I see {'daily'} text
    Then I see {'random'} text

  Scenario: User tap button EveryDay
    And I tap {'daily'} text
    And I wait
    Then I don't see  {'daily'} text
    And I see {Icons.backspace_rounded} icon