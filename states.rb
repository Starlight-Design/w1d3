@states = {
  "OR" => {
    state: "Oregon",
    cities: ["Portland", "Bend"],
    taxes: {
      perc: 0.94
    }
  },

  "FL" => {
    state: "Florida",
    cities: ["Miami", "Tampa Bay"],
    taxes: {
      perc: 0.25
    }
  },

  "CA" => {
    state: "California",
    cities: ["Los Angeles", "San Francisco"],
    taxes: {
      perc: 0.22
    }
  },

  "NY" => {
    state: "New York",
    cities: ["New York City", "Buffalo"],
    taxes: {
      perc: 0.19
    }
  },

  "MI" => {
    state: "Michigan",
    cities: ["Detroit", "Troy"],
    taxes: {
      perc: 0.16
    }
  }
}

@states["WA"] = {
    state: "Washington",
    cities: ["Seattle", "Vancouver"],
    taxes: {
      perc: 0.15
    }
}

@states["TX"] = {
    state: "Texas",
    cities: ["Houston", "Dallas"],
    taxes: {
      perc: 0.12
    }
}
#################################
def describe_state(input)
  return "#{@sc} is for #{@states[input][:state]}, in which the cities are #{@states[input][:cities].join(' and ')}."
end

puts "Enter a state code!"
@sc = gets.chomp.upcase
puts describe_state(@sc)
#################################
def calculate_tax(input)
  total = @states[input][:taxes][:perc] * @amt
end

puts "Enter a state code for taxes!"
@sc2 = gets.chomp.upcase
puts "Enter a money value!"
@amt = gets.chomp.to_i.round(2)
puts "$#{calculate_tax (@sc2)} is your tax in this state." 
#################################
def find_state_for_city(input)
  @states.each do |s,c|
    if c[:cities].include?(input) 
      return s 
  end
    end
end

puts "Enter a city name to find out what state it's in!"
@cn = gets.chomp
p find_state_for_city(@cn) 