﻿
Feature: The Berlin Clock
		As a clock enthusiast
		I want to tell the time using the Berlin Clock
		So that I can increase the number of ways that I can read the time


Scenario: Midnight 00:00
When the time is "00:00:00"
Then the clock should look like
"""
Y
OOOO
OOOO
OOOOOOOOOOO
OOOO
"""


Scenario: Middle of the afternoon
When the time is "13:17:01"
Then the clock should look like
"""
O
RROO
RRRO
YYROOOOOOOO
YYOO
"""

Scenario: Just before midnight
When the time is "23:59:59"
Then the clock should look like
"""
O
RRRR
RRRO
YYRYYRYYRYY
YYYY
"""

Scenario: Midnight 24:00
When the time is "24:00:00"
Then the clock should look like
"""
Y
RRRR
RRRR
OOOOOOOOOOO
OOOO
"""


Scenario: Incorrect word input
When the time is "wrong"
Then the exception should be thrown
"""
Input string is not in correct format (hh:mm:ss)
"""

Scenario: Incorrect numeric input
When the time is "59:69:89"
Then the exception should be thrown
"""
Input string is not in correct format (hh:mm:ss)
"""

Scenario: Incorrect time after midnight
When the time is "24:00:01"
Then the exception should be thrown
"""
Input string is not in correct format (hh:mm:ss)
"""

Scenario: Incorrectly short input
When the time is "18:00"
Then the exception should be thrown
"""
Input string is not in correct format (hh:mm:ss)
"""

Scenario: Characters from outside of ASCII
When the time is "汉语/漢語"
Then the exception should be thrown
"""
Input string is not in correct format (hh:mm:ss)
"""
