Feature: Demo Feature

    Scenario: I can search for an item
        Given I am on 1a.lv homepage
        When I search for an item
        Then I verify if first item is visible
        And I verify if second item is visible
        And I verify if third item is visible
        And I verify if fourth item is visible