*** Settings ***
Resource         ../utils/importer.resource

*** Variables ***
${url}            https://reqres.in
${page_1}         1

${base_url}       https://reqres.in/api/users
${page_2}         2

*** Test Cases ***
Test Get Request List Users Page 1
    [Documentation]       Test Get Request List Users Page 1  
    [Tags]                Regression
    Create Session    reqres    ${url}
    ${response} =    Get Request    reqres    /api/users?page=${page_1}
    Should Be Equal As Numbers    ${response.status_code}    200
    
    
    # Log To Console    Response:${response}
    # Log To Console    ${response.json()}
    # Set Suite Variable    ${response}    ${response}
    # Delete All Sessions

Test Get Request List Users Page 2
    [Documentation]       Test Get Request List Users Page 2  
    [Tags]                Regression
    ${response}=    GET      ${base_url}     params=page=${page_2}   expected_status=200
    log    ${response.json()}
    Should Be Equal As Strings    6  ${response.json()}[per_page]
    Should Be Equal As Strings    12  ${response.json()}[total]
    Should Be Equal As Strings    7  ${response.json()}[data][0][id]
    
    # Log To Console    Response:${response}
    # Log To Console    ${response.json()}
    # Set Suite Variable    ${response}    ${response}
    # Delete All Sessions