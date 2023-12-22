*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${base_url}       https://reqres.in/api/users

*** Test Cases ***
Test Delete Simple Request
    ${delete_resp}=   DELETE    ${base_url}+/2           expected_status=204