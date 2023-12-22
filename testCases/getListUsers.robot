*** Settings ***
Library    RequestsLibrary

*** Variables ***
${url}            https://reqres.in
${page}           2

*** Test Cases ***
Get Request List Users
    Create Session    reqres    ${url}
    ${response} =    Get Request    reqres    /api/users?page=${page}
    Should Be Equal As Numbers    ${response.status_code}    200
    
    Log To Console    Response:${response}
    Log To Console    ${response.json()}
    Set Suite Variable    ${response}    ${response}
    Delete All Sessions