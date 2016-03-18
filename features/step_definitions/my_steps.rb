Given(/^Voy a la portada$/) do
   visit '/'
end

Then(/^Tiene que decir "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^la palabra secreta es "(.*?)"$/) do |arg_palabrasecreta|

end

When(/^ingreso "(.*?)"$/) do |letra|
  fill_in("letra", :with => letra)
  click_button("Ingresar")	
end


