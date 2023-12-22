*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}       https://reqres.in/api/users
${page_2}         2

${updated_expectedname}     update_test
${updated_expectedjob}      resident

*** Test Cases ***
Test Put Simple Request
    [Documentation]       Test Put Simple Request 
    [Tags]                Regression
    &{request_body}=  Create Dictionary    name=update_test        job=resident
    ${response}=     PUT        ${base_url}+/2     json=${request_body}    expected_status=200
    # log      ${response.json()}