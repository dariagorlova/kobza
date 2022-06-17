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
    And I enter {['В', 'І', 'Т', 'Е', 'Р']} word
    And I tap {Icons.keyboard_return} icon
    #Then I see ColoredBox with {Colors.green} color
    Then I see letter {'В'} marked at guessed

  Scenario: User canceled letter entry
    And I tap {'К'} text 
    And I tap {Icons.backspace_outlined} icon
    Then I see {'К'} text {1} times

  Scenario: User enter uncorrect word
    And I enter {['Ц', 'У', 'К', 'О', 'Р']} word
    And I tap {Icons.keyboard_return} icon
    Then I see {'Wrong word'} text

  Scenario: User guessed the word
    And I enter {['В', 'І', 'Т', 'Е', 'Р']} word
    And I tap {Icons.keyboard_return} icon
    Then I see {'Congratulation'} text

  Scenario: User not guessed the word 
    And I enter {['К', 'О', 'Б', 'З', 'А']} word {6} times
    Then I see {'Loss'} text
    And I tap {'OK'} text
    Then I don't see letter {'К'} marked at unguessed
