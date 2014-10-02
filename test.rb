business_card = {
  name: "Don Burks",
  age: "old",
  pets: {
    cat: "Katana",
    dogs: ["Lady", "Mongrel", "Copito"]
  },
  email: ["don@lighthouselabs.ca", "don@donburks.com"]
}
 
emails = business_card[:email]
puts emails[1]
 
puts business_card[:email][1]
 
dags = business_card[:pets][:dogs]
 
puts "Don has had #{business_card[:pets][:dogs].size} dogs in his life."
puts "The last one was named #{dags.last}."