def say_hello(name, health = 100)
  "I'm #{name.capitalize} with a health of #{health}"
end

puts say_hello(name: "TINKYWINKY", health: 50)

puts say_hello("Jase")
