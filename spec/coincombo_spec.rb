require("rspec")
require("sinatra")
require('capybara/rspec')
require("coincombo.rb")

describe("String#coincombo") do
  it("Return the name of the currency")do
    expect("10".coincombo).to(eq("0 Quarters 1 Dimes 0 Nickels 0 Pennies"))
  end
  it("Calculate the proper number of change")do
    expect("2".coincombo).to(eq("0 Quarters 0 Dimes 0 Nickels 2 Pennies"))
  end
  it("Calculate a larger sum of change")do
    expect("500".coincombo).to(eq("20 Quarters 0 Dimes 0 Nickels 0 Pennies"))
  end
end
