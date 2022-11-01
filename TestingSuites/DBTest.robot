*** Settings ***

Library    DatabaseLibrary
Library    DataDriver     ${EXECDIR}${/}TestingScripts/TestingConnection.xlsx      sheet_name=TestSheet

#To execute script: robot -d Results/DBTest     TestingSuites/DBTest.robot

*** Variables ***

*** Test Cases ***
Run Database Test
    Establish Connection To SqlExpress

Running-${testCaseName}-${description}      ${query}      ${expectedResults}

*** Keywords ***

Establish Connection To SqlExpress

	${DBHost_ConnectionString}=  Set Variable    Driver='ODBC Driver 17 for SQL Server', Server='NUTEETUF\\SQLEXPRESS', Database='AdventureWorks2019', Trusted_Connection='yes'
    Connect To Database Using Custom Params   pyodbc    ${DBHost_ConnectionString}
    Log Many    Connection Succesful

CloseSqlExpress Connect
	Disconnect From Database
	

Run On SqlExpress
	  [Arguments]    ${SQLQuery}    ${expectedResults}
	  Log Many    ${SQLQuery}
	  Connect To Database psycopg2
	  ${result}=		Query    ${SQLQuery}
	  Log Many    ${result}
	 Should Be Equal As Strings   ${expectedResults}      ${result}      msg=Query Results: Expected: ${expectedResults}${:} Actual: ${result}${\n}Returned Results:${result}${\n}${\n}
	  CloseSqlExpress Connect
	  
	  [Return]    ${result}