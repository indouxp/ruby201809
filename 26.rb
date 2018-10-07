# coding:utf-8
# 例外

x = gets.to_i

begin 
  p 100 / x
rescue => ex
  p "error"
  p ex.message
  puts "stopped!"
ensure
  puts "--end--"
end
