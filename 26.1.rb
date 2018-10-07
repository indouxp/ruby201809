# coding:utf-8
# 例外

class MyError < StandardError; end

x = gets.to_i

begin 
  if x == 3
    raise MyError
  end
  p 100 / x
rescue MyError
  puts "not 3!"
rescue => ex
  p "error"
  p ex.message
  puts "stopped!"
ensure
  puts "--end--"
end
