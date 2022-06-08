Feature: Game

  Background:
    Given the app is running
    And I tap {'daily'} text
    And I wait {1} second

  Scenario: User tap K key
    Then I see {'К'} text
    And I tap {'К'} text
    Then I see {'К'} text {2} times

  Scenario: User guessed the letter В
    And I enter {['В', 'У', 'Й', 'К', 'А']} word
    And I tap {'>'} text
    Then I see ColoredBox with {Colors.green} color
    Then I see letter {'В'} marked at guessed