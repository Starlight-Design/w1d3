puts "Write a sentence here!"
input = gets.chomp

def count_letters (counter)
  ctr = Hash.new(0)
  spl = counter.split(//)
  spl.delete(" ")
  spl.each do |x| 
    ctr[x] += 1
  end 
end

count_letters(input)