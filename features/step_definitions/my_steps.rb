Given(/^Voy a la portada$/) do
   visit '/'
end

Then(/^Tiene que decir "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^Tiene que ingresar una "(.*?)"$/) do |leter|
  last_response.body.should =~ /#{leter}/m
end

