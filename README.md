
--Read Me--

The central point of the project is the directory "TestSuites". 

The file is a *.robot file that is scripted in Python as well as the Selenium Library keywords.

The Libraries called are:
-DatabaseLibrary - This is installed as part of packages
-DataDriver ... - This is used to call the Excel Workbook in the directory "TestingScripts"

Test Cases

The connection to the DB is established and connects

Problem:
I am unable to run the scripts in the excel workbook. 

Error: 
PS C:\Users\absel\khwezi\connAndTest> robot -d Results/DBTest     TestingSuites/DBTest.robot
==============================================================================
DBTest
==============================================================================
[ ERROR ] [ DataDriver ] Error in robot file:
  File "C:\Users\absel\khwezi\connAndTest\TestingSuites\DBTest.robot", line 0
[ ERROR ] In source file:
  File "C:\Users\absel\khwezi\connAndTest\TestingScripts/TestingConnection.xlsx", line 0
[ ERROR ] Calling method '_start_suite' of listener 'DataDriver' failed: AttributeError: No "Test Template" keyword found for first test case.
Run Database Test                                                     | PASS |
------------------------------------------------------------------------------
Running-${testCaseName}-${description}                                | FAIL |
Keyword name cannot be empty.
------------------------------------------------------------------------------
DBTest                                                                | FAIL |
2 tests, 1 passed, 1 failed
==============================================================================
