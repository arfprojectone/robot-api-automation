*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}       https://reqres.in/api/users
${page_2}         2

${expectedname}     test
${expectedjob}      team leader

*** Test Cases ***
Test Post Simple Request
    [Documentation]       Test Post Simple Request  
    [Tags]                Regression
    &{request_body}=  Create Dictionary    name=test        job=team leader
    ${response}=     POST        ${base_url}     json=${request_body}    expected_status=201
    log      ${response.json()}