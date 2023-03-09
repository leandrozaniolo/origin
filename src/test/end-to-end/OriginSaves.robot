*** Settings ***
Documentation    Savings
Resource    base.robot
Library    SeleniumLibrary

*** Test Cases ***

Savings
    [Tags]    @test
    Given access saving goal plan
    And Set Total Amount
