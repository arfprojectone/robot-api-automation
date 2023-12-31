*** Settings ***
Resource         ../utils/importer.resource

*** Variables ***
${url}            https://reqres.in
${user_id}        2

*** Test Cases ***
Test Get Request Single User
    [Documentation]       Test Get Request Single User    
    [Tags]                Regression
    Create Session    reqres    ${url}
    ${response} =    Get Request    reqres    /api/users/${user_id}
    Should Be Equal As Numbers    ${response.status_code}    200

    # Log To Console    Response:${response}
    # Log To Console    ${response.json()}
    # Set Suite Variable    ${response}    ${response}
    # Delete All Sessions