# FreeAgent Coding Challenge

Thank you for your interest in the FreeAgent Coding Challenge.  This template is a barebones guide to get you started.  Please add any gems, folders, files, tests, etc. you see fit in order to produce a solution you're proud of.

## Coding Challenge Instructions

Please see the INSTRUCTIONS.md file for more information.

## Your Solution Setup and Run Instructions

Please include instructions on how to setup and run your solution here.

My solution will work with a normal function call with parameters filled and return a float number or raise an exception.


## Your Design Decisions

We'd love to hear your thoughts around any design decisions you made while coding your solution.

The idea to make the code maintainable for future requirements was to use Ruby's rescue function. The idea is that you would try to parse the file in a certain fashion and if it doesn't work you can use rescue and try parsing with a different method. You then call the correct calculating function based on the format of the data. If you were able to change the parameters for self.rate(data, from, to), I would add an extra parameter where you can also choose the data type rather than using my method. You could then use a case statement to choose a calculating/ reformatting inputs function.

The calculating/ reformatting functions would take a parameter for what the base currency to allow for cases when EUR is not being used.
