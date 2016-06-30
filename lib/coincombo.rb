class String
  define_method(:coincombo) do
    change = self.to_i()
    resultArray = []
    quarterArray = change.divmod(25)
    resultArray.push(quarterArray.at(0))
    resultArray.push("Quarters")
    dimeArray = quarterArray.at(1).divmod(10)
    resultArray.push(dimeArray.at(0))
    resultArray.push("Dimes")
    nickelArray = dimeArray.at(1).divmod(5)
    resultArray.push(nickelArray.at(0))
    resultArray.push("Nickels")
    resultArray.push(nickelArray.at(1))
    resultArray.push("Pennies")
    resultArray.join(" ")
  end
end
