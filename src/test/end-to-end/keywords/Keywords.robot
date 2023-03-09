*** Settings ***
Documentation    Savings
Resource    ../base.robot
Variables   ../screen/OriginSaves.yaml
*** Keywords ***

access saving goal plan
    Open Browser                           ${HOMEPAGE}           ${BROWSER}

Set Total Amount
    Wait Until Page Contains                Let's plan your               ${GENERAL_TIMEOUT}
    Input Text                              ${fieldFirst.XpathValue}      ${INPUTVALUE}
    Wait Until Page Contains                ${textValues.valueAssert}     ${GENERAL_TIMEOUT}
