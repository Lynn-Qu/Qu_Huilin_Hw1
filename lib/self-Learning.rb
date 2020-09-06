#0. basic undertsanding of Ruby
# puts (function): print string
#puts "Hello world!" 

# use a varible
## 只有 puts and putc , 没有put
##  puts: put a string
##  putc: put a char
var1 = "test the usage of varible"
var2 = "what is the difference between puts and put"
#puts var1
#puts var2

# define a method
def sum
 num1 = 3
 num2 = 3
 puts num1+num2
end

# call a function
#sum

# define a method with argument
def sum2(n1, n2)
    puts n1+n2
end
#sum2(1,2)

#1. String leanring
#puts var1 + " " + var2

# input from users (terminal)
#puts "hello , enter your first name: "
#fn = gets.chomp
#puts "hello , enter your last name: "
#ln = gets.chomp

#puts "welcome #{fn} #{ln} to the playgroud!"

#2. Number learning
puts "enter number1: "
# gets.chomp will get string
first_number1 = gets.chomp  # 这里输入是string，需要做转换
puts "enter number2: "
second_number = gets.chomp
#puts first_number1.class
multi = first_number1.to_i * second_number.to_i
puts "num1 * num2 is: #{multi}"
