Given(/^the input "(.*?)"$/) do |input|
	@input = input
end

When(/^the calculator is run$/) do
	@output = `ruby calc.rb #{@input}`
	raise('Command failed!') unless $?.success?
end

Then(/^the output should be "(.*?)"$/) do |expected_output|
	@output.should == expected_output
end

Given(/^i have \$(\d+) in my account$/) do |input|
	@input = input
end

When(/^i request \$(\d+)$/) do |output|
  	@output = output
end

Then(/^\$(\d+) should be dispensed$/) do |remains|
	@output.should == remains
end

