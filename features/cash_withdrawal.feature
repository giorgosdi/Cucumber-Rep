Feature: Cash withdrawal
	Scenario: Successful withdrawal from an account in credit
	Given i have $100 in my account
	When i request $20
	Then $20 should be dispensed