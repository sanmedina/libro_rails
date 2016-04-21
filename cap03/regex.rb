s_test = "uno dos tres"
s_bad_test = "cuatro cinco"
puts /dos/
puts /dos/ =~ s_test
puts /dos/.match(s_test)

regex_obj = /dos/
puts regex_obj
puts regex_obj =~ s_test
puts regex_obj.match(s_test)

puts "nada" unless regex_obj =~ s_bad_test
puts "nada" unless regex_obj.match(s_bad_test)
