require "/home/bala/Desktop/ruby/utilities"
include Utilities

puts " filter demo"
 
 result=[3,6,7,8,9].filter{|a| a%3==0 }

 puts result

 puts " find demo"
 
 result=[3,6,7,8,9].find{|a| a==8 }

 puts result


