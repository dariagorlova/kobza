Feature: Start of application

  Background:
    Given the app is running

  Scenario: As a User I want to see buttons with different options
    Then I see {'Щодня'} text
    Then I see {'Абищо'} text

  Scenario: User tap button EveryDay
    And I tap {'Щодня'} text
    And I wait
    Then I don't see  {'Щодня'} text
    And I see {Icons.backspace_rounded} icon