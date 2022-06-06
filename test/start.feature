Feature: Start of application

  Background:
    Given the app is running

  Scenario: As a User I want to see buttons with different options
    Then I see {'daily'} text
    Then I see {'random'} text

  Scenario: User tap button EveryDay
    And I tap {'daily'} text
    And I wait {1} second
    Then I see {Icons.close} icon

  Scenario: User tap K key
    And I tap {'daily'} text
    And I Wait {1} second
    Then I see {'К'} text
    And I tap {'К'} text
    Then I see {'К'} text {2} times

  Scenario: User guessed the letter K
    #When I do {[2, 3, 2, 2, 3]} pushups
    #Then I see {'Congratulation!'} text
    And I tap {'daily'} text
    And I Wait {1} second
    And I enter {['К', 'О', 'Л', 'І', 'Р']} word
    And I tap {'>'} text
    Then I see ColoredBox with {Colors.green} color
