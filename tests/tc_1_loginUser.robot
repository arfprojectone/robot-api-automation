*** Settings ***
Resource         ../utils/importer.resource

*** Variables ***
${username}    John Doe
${password}    ThisIsNotAPassword
${base_url}    https://katalon-demo-cura.herokuapp.com

*** Test Cases *** 
Test Login User
    [Tags]                Regression
    &{request_body}=  Create Dictionary    username=${username}         password=${password}
    ${response}=     POST        ${base_url}/authenticate.php     json=${request_body}    expected_status=anything    #200
    log      ${response}