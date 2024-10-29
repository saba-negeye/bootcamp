=begin 
1 #Create an if/else statement. 
Make sure to include at least one elsif. 
Each branch of the statement should print something to the console
=end

x = 10 
y = 5
if x>y
    puts "x is greater than y"
elsif x<y
    puts "x is less than y"
else 
    puts "x and y are equal"
end


=begin 
2. Create an unless statement. The statement should print something to the console.
=end
tired = false 
puts "I am well rested" unless tired


=begin 
3. We’re letting you know what value (true or false) 
we want each variable to have, and your job is to add an expression that evaluates to 
the correct value using comparators.
=end
# test_1 should be false
test_1 = 10 > 20
# test_2 = should be false
test_2 = 1 == 5
# test_3 = should be true
test_3 = 5 != 6


=begin
4. Booleans: The code below indicates what value (true or false) 
we want each variable to have, and your job is to add an expression that evaluates 
to the correct value using boolean operators (&&, ||, or !).
=end

# test_1 should be true
test_1 = (10==1) || (1>-2)

# test_2 = should be true
test_2 =(100< 101) && !(19>20)

# test_3 = should be false
test_3 =(99 ==(9*11)) && (10==9)

