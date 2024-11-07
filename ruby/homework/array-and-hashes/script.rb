#task 1 Arrays
# 1 Create an array named fruits that contains the following fruits: "apple," "banana," "cherry," "date," "fig," "grape."
fruits = ["apple", "banana", "cherry", "date", "fig", "grape"]
# 2 Print the entire array.
puts fruits
# 3 Print the first and last elements of the array.
puts "#{fruits.first}, #{fruits.last}"
# 4 Add "kiwi" to the end of the array.
fruits.push("kiwi")
# 5 Remove "cherry" from the array.
fruits.delete("cherry")
# 6 Print the modified array.
puts "Modified Fruits: #{fruits}" 
# 7 Check if "apple" is in the array and print the result. terniary operator used
puts fruits.include?("apple") ? "apple is included" : "apple is not included"
# 8 Calculate and print the total number of fruits in the fruits array.
number_of_fruits = fruits.length 
puts number_of_fruits

#strech goal 
#1 Ask the user to input a fruit, 
#and then check if that fruit is in the array. 
#Print the result.  
puts "what fruit do you want add to the list? "
added_fruit = gets.chomp
puts fruits.include?(added_fruit)? "that fruits is already listed" : "that fruit is not listed"

#2
#Sort the fruits array in alphabetical order and print the sorted list.
fruits.sort!
puts fruits


#task 2 Hashes
#1 Create a hash named student
student ={
    "name" => "John Smith",
    "age" => 25,
    "major"=> "computer science"
}
puts student
#2 Print only the value associated with the "name" key.
puts student["name"]
#3 Add a new key-value pair to the hash: "gpa" => 3.7.
student["gpa"] = 3.7
#4 Update the "age" value to 26.
student["age"] = 26
#5 Print the modified hash.
puts student
#6 Check if the hash contains a key "gender" and print the result.
if student.has_key?("gender")
    puts "the students gender is" + student["gender"]
else 
    "that key does not exist"
end

#stretch goal 
#1  Create a new array called students that contains multiple student hashes
students = [{"name" => "John Smith",
    "age" => 25,
    "major"=> "computer science"}, 

    {"name" => "jane doe",
    "age" => 22,
    "major"=> "biology"},

    {"name" => "Saba Negeye",
    "age" => 27,
    "major"=> "computer science"
    }
    ]

    #2 Use a loop to print the name and major of each student in the students array.

    students.each do |student|
        puts "#{student[name]}, : #{student[major]}
