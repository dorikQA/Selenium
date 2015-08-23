require 'rubygems'
require 'selenium-webdriver'
require 'cucumber'


Before do
$driver = Selenium:: WebDriver.for :firefox
 #  $driver = Selenium:: WebDriver.for :chrome
$driver.get $basicurl
$driver.manage.window.maximize
element = $driver.find_elements :xpath => "//span[@class = 'loggedIn']"
sleep 4
if element.count > 0
  element[0].click
  element = $driver.find_element :xpath => "div[@class = 'tipcontent']/span/a[text() = 'Sign Out']"
  element.click
  sleep 5
end
end




AfterStep do |scenario|

 $driver.manage.timeouts.implicit_wait = 6
   # element = $driver.find_elements :xpath => "//div[@style = 'display: block;'][@id = 'mopalLightBox']//a[@id = 'mopalContinue']"
   # element_1 = $driver.find_elements :xpath => "//a[@title ='Close Chat Invitation']"
   # if element.count > 0
   #   element[0].click
   # elsif element.count > 0
   #   element_1[0].click
   # else
   #  puts "Everything fine"
   # end
end

After do
  $driver.close
end



#
# def TapContinue
#   element = $driver.find_elements :id => "mopalContinue"
#   if element.count > 0
#     element[0].click
#   end
#   sleep 5
# end
#element = $driver.find_elements :id => "mopalContinue"
# element_1 = $driver.find_elements :xpath => "//a[@title ='Close Chat Invitation']"
#element = $driver.find_elements :xpath => "//a[@class ='mopalContinueButt mopalContinue']"
# if element.count > 0  # and element[0].displayed? == true
# element.displayed?
#   begin
#     element = $driver.find_elements :id => "mopalContinue"
#     element[0].click
#   rescue
#     element = false
#   end
#element[0].click
#elsif element.count > 0
# element_1[0].click