*** Settings ***
Documentation    Savings
Resource    base.robot
Library    SeleniumLibrary

*** Test Cases ***

Savings in three months
    Given Access saving goal plan
    When Set amount
    Then Reach Goal By

Do not allow to set previous month
    Given Access saving goal plan
    When Try to input previous month
    Then Current month should be present

Validting letters on money field
    Given Access saving goal plan
    When Try to set letters to money
    Then Monthy amount will be zero
