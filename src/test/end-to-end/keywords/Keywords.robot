*** Settings ***
Documentation    Savings
Resource    ../base.robot
Variables   ../screen/OriginSaves.yaml
Library           DateTime

*** Keywords ***

Access saving goal plan
    Open Browser                            ${HOMEPAGE}                     ${BROWSER}

Set amount
    Wait Until Page Contains                Let's plan your saving goal.    ${GENERAL_TIMEOUT}
    Input Text                              ${fieldFirst.SendAmount}        ${textValues.valueAmount}
    Wait Until Page Contains                ${textValues.valueAssert}       ${GENERAL_TIMEOUT}

Reach goal by
    Wait Until Element Is Visible           ${arrows.rightPressing}
    Press Keys                              ${arrows.rightPressing}         ARROW_RIGHT
    Press Keys                              ${arrows.rightPressing}         ARROW_RIGHT
    Press Keys                              ${arrows.rightPressing}         ARROW_LEFT
    Press Keys                              ${arrows.rightPressing}         ARROW_RIGHT
    Wait Until Page Contains                ${textValues.valueMonth}
    Wait Until Page Contains                ${textValues.valueThree}        ${GENERAL_TIMEOUT}
    Click Button                            ${pageElement.button}

Try to set letters to money
    Wait Until Element Is Visible           ${pageElement.totalAmountField}
    Input Text                              ${fieldFirst.SendAmount}        ${sendLetters.value}

Try to input previous month
    ${date}=  Get Current Date              result_format=%B
    Wait Until Page Contains                ${date}
    Press Keys                              ${arrows.rightPressing}         ARROW_RIGHT
    Press Keys                              ${arrows.rightPressing}         ARROW_LEFT

Current month should be present

    ${date}=  Get Current Date              result_format=%B
    Wait Until Page Contains                ${date}

Monthy amount will be zero
    Wait Until Page Contains                ${textValues.zeroValue}          ${GENERAL_TIMEOUT}
    Element Should Not Be Visible           ${sendLetters.value}