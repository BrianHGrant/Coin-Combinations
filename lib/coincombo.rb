require("pry")

class String
  define_method(:coincombo) do
    change = self.to_i()
    # coins = {"25" => "Quarter", "10" => "Dime", "5" => "Nickel", "1" => "Penny"}
    # if coins.include?(self)
    #   coins.fetch(self)
    # end
    quarterCounter = 0
    dimeCounter = 0
    nickelCounter = 0
    pennyCounter = 0
    resultArray = []
    quarterArray = change.divmod(25)
    quarterCounter+=quarterArray.at(0)
    resultArray.push(quarterCounter)
    resultArray.push("Quarters")
    dimeArray = quarterArray.at(1).divmod(10)
    dimeCounter+=dimeArray.at(0)
    resultArray.push(dimeCounter)
    resultArray.push("Dimes")
    nickelArray = dimeArray.at(1).divmod(5)
    nickelCounter+=nickelArray.at(0)
    resultArray.push(nickelCounter)
    resultArray.push("Nickels")
    pennyCounter = nickelArray.at(1)
    resultArray.push(pennyCounter)
    resultArray.push("Pennies")
    resultArray.join(" ")
  end
end
