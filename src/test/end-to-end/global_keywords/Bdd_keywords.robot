*** Keywords ***

Prerequisites
       [Documentation]  Remove the required gherkin part of a step
       ... so that can be reused without jeopardizing the test
       [Arguments]    @{kws}

       Run Keywords  @{kws}

Given
    [Documentation]  Remove the required gherkin part of a step
    ... so that can be reused without jeopardizing the test
    [Arguments]     @{kws}

    Run Keywords  @{kws}

When
    [Documentation]  Remove the required gherkin part of a step
    ... so that can be reused without jeopardizing the test
    [Arguments]     @{kws}

    Run Keywords  @{kws}

Then
    [Documentation]  Remove the required gherkin part of a step
    ... so that can be reused without jeopardizing the test
    [Arguments]     @{kws}

    Run Keywords  @{kws}