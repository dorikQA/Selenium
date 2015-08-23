$basicurl = "http://www.toysrus.com"
# $driver.manage.timeouts.implicit_wait = 6
#ffffff

Then /^Open category ([^"]*) and click subcategory ([^"]*)$/ do |x, y|
  element = $driver.find_element :xpath => "//a[@class='mainNavLink' and text() = \"#{x}\"]"
  element.click
  # sleep 8
  element = $driver.find_element :xpath =>  "//img[@alt = '#{y}']"
  element.click
  # sleep 8
end

Then /^Open ([^"]*) category and click the subcategory ([^"]*)$/ do |x,y|
  element = $driver.find_element :xpath => "//a[@class='mainNavLink' and text() = \"#{x}\"]"
  element.click
  sleep 10
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text()= \"#{y}\"]"
  element.click
  sleep 6
end

Then /^Open ([^"]*) the category$/ do |category|
 element = $driver.find_element :xpath => "//a[@class='mainNavLink' and text() = \"#{category}\"]"
 element.click
 # sleep 8
end
Then /^Click the subcategory ([^"]*)$/ do |x|
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = '#{x}']"
  element.click
  # sleep 6
end
Then /^Click subcategory ([^"]*)$/ do |x|
  element = $driver.find_element :xpath => "//img[@alt = '#{x}]"
  element.click
  sleep 6
end
Then /^Click category Clearance$/ do
  element = $driver.find_element :xpath => "//a[@class = 'mainNavLink clearance' and text() = 'Clearance']"
  element.click
  sleep 5
end

Then /^Pick ([^"]*) item$/ do |x|
  element = $driver.find_element :xpath => "(// img[@class = 'swatchProdImg'])[#{x}]"
  element.click
  sleep 10
end

Then /^Verify that ([^"]*) items in cart$/ do |x|
    $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '#{x}']"
    # sleep 8
end

Then /^Open Dinosaurs$/ do
  element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Dinosaurs']"
  element.click
  # sleep 8
end



# Then /^Click the button Add Item to the Cart$/ do
#   element = $driver.find_element :id => "cartAddition"
#   element.click
#   sleep 3
#   # TapContinue()
#   # sleep 4
# end



Then /^Click the button Add Item to the Cart$/ do
  element = $driver.find_element :id => "cartAddition"
  wait = Selenium::WebDriver::Wait.new(:timeout => 30)
  wait.until { $driver.find_element :id => "cartAddition" }
  element.click
end
#
Then /Go home$/ do
   element = $driver.find_element :xpath => "//div[@id='hdrLogo']/a"
   element.click
end

Then /^Open My cart$/ do
  element = $driver.find_element :xpath => "//a[@class ='cartButton']"
  element.click
  # sleep 10
end

Then /^Tap remove button$/ do
  element = $driver.find_element :id=>"remove-1"
  element.click
end

Then /^Change items from 1 to 2$/ do
  element = $driver.find_element :xpath => "//input[@id = 'quantity']"
  element.clear
  element.send_keys "2"

end
Then /^Click the 8-11 Years subcategory$/ do
  element = $driver.find_element :xpath => "//div[@class = 'filter_multiselectAttrib']/a[text() = '8-11 Years']"
  element.click

end

Then /^Click Weekly Add page button at the top of page$/ do
  element = $driver.find_element :xpath => "//a[@class = 'liText' and text() = 'Weekly Ad']"
  element.click

end

Then /^Verify that user on the Weekly Add page$/ do
  $driver.find_element :xpath => "//div[@class = 'SavingsCenterWrapper']/h1[@class = 'twd_h1 twd_SavingsTitle' and text() = 'savings center']"
  $driver.find_element :xpath => "//h3[@class = 'twd_h5']/a[contains(text(),\"Today's Deals\")]"
end

Then /^Verify then user on the Gift Founder page$/ do
  $driver.find_element :xpath => "//p[@class = 'twd_p twd_text_center giftlistheader' and text ()= 'More Ways to Give']"
  $driver.find_element :xpath => "//img[@alt = 'The Gift Finder']"
end

Then /^Click Gift Founder page buttom at the top of page$/ do
  element = $driver.find_element :xpath => "//a[@class = 'liText' and text() = 'Gift Finder']"
  element.click

end

Then /^Search ([^"]*) items$/ do |search|
  element = $driver.find_element :id => "kw"
  element.send_keys "'#{search}'"
  element.submit
  end

Then /^Verify that ([^"]*) item displays ([^"]*)$/ do |numberitem, item|
  element = $driver.find_element :xpath => "(//a[@class = 'prodtitle'][contains (text(),'#{item}')])['#{numberitem}']"
  element.click

end

Then /^Search Dress$/ do
  element = $driver.find_element :id => "kw"
  element.send_keys "Dress"
  element.submit

end


Then /^Click the MyAccoutSign In link on the top Nav bar$/ do
    element = $driver.find_element :xpath => "//span[@id='hdrWelcomeLoginText']"
    element.click

end

Then /^Click the SignIn in the dropDown$/ do
  element = $driver.find_element :xpath => "//a[text() =  'Sign In']"
  element.click

end
Then /^Enter Valid information into email field$/ do
  element = $driver.find_element :xpath => "//input[@id = 'emailId']"
  element.send_keys "dorik80@mail.ru"

end

Then /^Input password$/ do
  element = $driver.find_element :xpath => "//input[@id = 'passwd']"
  element.send_keys "Zxc123zxc"
  sleep 8
end



Then /^Tap SignIn button$/ do
  element = $driver.find_element :xpath => "//input[@class = 'signIn'][@alt = 'Sign In']"
  element.click

end

Then /^Find all items with 4 stars and unavailable for Free pick up$/ do
  element = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '5.0 stars']][.//li[@class = 'unavail noSts-ispu']]//a[@class = 'prodtitle']"
  puts "Here or elements"
  # puts element[2].text
  # puts element[0].attribute("innerHTML")
  puts element.map  {|n| n.attribute("innerHTML")}
end

Then /^Open subcategory Apple from Brand by moving mouse$/ do
  element = $driver.find_element :xpath => "//a[@class='mainNavLink' and text() = 'Brand']"
  sleep 10
  $driver.mouse.move_to element
  sleep 5
  element = $driver.find_element :xpath => "//a[@class = 'hdrMenuCat' and text() = 'Apple']"
  sleep 5
  element.click
end
# My firdst loop



# Then /^Check if more then 3 items with 4 stars on the page$/ do
#   pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
#   totalpages =pages.count-1
#   sleep 5
#
#   for i in 0..totalpages do
#     items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
#     puts items.map  {|n| n.attribute("innerHTML")}
#     # totalitems = items.count
#     # if totalitems >=3
#     #   puts "On this page more then 3 items with 4 stars"
#     #   puts "Here name of these items:"
#     #   puts items.map  {|n| n.attribute("innerHTML")}
#     # end
#     pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
#     pages[i].click
#   end
#   items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
#   puts items.map  {|n| n.attribute("innerHTML")}
# end

Then /^Verify that amount items with 2 stars on each page more then 0 if condition is not met raise an error$/ do
  pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
  totalpages =pages.count-1
  sleep 5

    for i in 0..totalpages do
    items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '2.0 stars']]//a[@class = 'prodtitle']"
    totalitems = items.count

    if totalitems > 8
    puts items.map  {|n| n.attribute("innerHTML")}

      raise  "We don't have 2.0 items on this page"
    end


    pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
    pages[i].click

end


  Then /^Check how many elements with 4 stars are displayed$/ do
    pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
    totalpages =pages.count-1
    sleep 6
    totalitems = 0
    for i in 0..totalpages do
      items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
      if items.count == 0
        raise "No products with 4 stars found"
      end
      puts items.map  {|n| n.attribute("innerHTML")}
      totalitems += items.count
      puts totalitems
      pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
      pages[i].click
      sleep 5
    end
    items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
    if items.count == 0
      raise "No products with 4 stars found"
    end
    puts items.map  {|n| n.attribute("innerHTML")}
    totalitems += items.count
    puts totalitems
  end
  #items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '2.0 stars']]//a[@class = 'prodtitle']"

end



#Marina's loop
# Then /^Find items with 4 stars on the page and print toatal items from all pages $/ do
#   pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
#   totalpages =pages.count-1
#   sleep 6
#
#   totalitems = 0
#   for i in 0..totalpages do
#     sleep 5
#     items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
#     puts items.map  {|n| n.attribute("innerHTML")}
#     totalitems += items.count
#     puts totalitems
#     pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
#     pages[i].click
#   end
#   items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
#   totalitems += items.count
#   puts totalitems
# end

Then /^Check if more then 3 items with 4 stars on the page$/ do
  pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
  totalpages =pages.count-1
  sleep 5

  for i in 0..totalpages do
    pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
    pages[i].click
    items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
    totalitems = items.count
    if totalitems >=3
      puts "On this page more then 3 items with 4 stars"
      puts "Here name of these items:"
      puts items.map  {|n| n.attribute("innerHTML")}
    raise "Items on this page less then 3"
    end
    #$driver.navigate.back
    pages = $driver.find_element :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
  end
end

Then /^Create loop that goes through pages and prints out 5 star elements, if page has more then 3 elements with 5 stars$/ do

  each_element = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '5.0 stars']]//a[@class = 'prodtitle']"
  stars = each_element.count
  if stars < 1
    for i in each_element do
      puts i.attribute("innerHTML")
    end
    raise "The page does not meet requirements! The number of FiveStar items is 0!"
  end

  elements = $driver.find_elements :xpath => "//a[@class = 'results pageNumber']"
  numpages = elements.count-2
  for e in 2..numpages do
    element = $driver.find_element :xpath => "//a[@class = 'results pageNumber'and text() = '#{e}']"
    sleep 10
    element.click
    puts "#{e}"
    each_element = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '5.0 stars']]//a[@class = 'prodtitle']"
    stars = each_element.count
    if stars < 1
      for i in each_element do
        puts i.attribute("innerHTML")
      end
      raise "The page does not meet requirements! The number of FiveStar items is 0!"
    end
  end
end



# Then /^I create loop$/ do
#   driver = $driver
#   elements = driver.find_elements :xpath => "//a[@class = 'results pageNumber']"
#   puts "#{elements}"
#   sleep 5
#   numpages = elements.count-2
#   for e in 2..numpages do
#     element = driver.find_element :xpath => "//a[@class = 'results pageNumber' and text() = '#{e}']"
#     sleep 2
#     element.click
#     puts "#{e}"
#   end
# end




# WORK!!!!!!!!!!!!!
#
# Then /^Check if more then 3 items with 4 stars on the page$/ do
#   pages = $driver.find_elements :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber']"
#   # totalpages = pages.count-2
#   puts totalpages
#   sleep 5
#   for page in 2..totalpages do
#     pages = $driver.find_element :xpath => "//div[@id = 'pagination']//a[@class = 'results pageNumber'and text()  = '#{page}']"
#     pages.click
#     puts "Page #{page}"
#     items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
#     totalitems = items.count
#        if totalitems >=3
#        puts "On this page more then 3 items with 4 stars"
#        puts "Here name of these items:"
#        puts items.map  {|n| n.attribute("innerHTML")}
#        end
#    end
# end
#????
# Then /^I create simple loop$/ do
#   driver = $driver
#   elements = driver.find_elements :xpath => "//a[@class = 'results pageNumber']"
#   puts "#{elements.text}"
#   sleep 5
#   numpages = elements.count-2
#   for e in 2..numpages do
#     element = driver.find_element :xpath => "//a[@class = 'results pageNumber' and text() = '#{e}']"
#     sleep 2
#     element.click
#     puts "#{e}"
#   end
# end

#?????????????
# Then /^Check if more then 3 items with 5 stars on the page$/ do
#
#   pages = $driver.find_elements :xpath => "//a[@class = 'results pageNumber']"
#   sleep 5
#   a = 1
#   for page in pages do
#     pages = $driver.find_elements :xpath => "(//a[@class = 'results pageNumber'])["#{a.to_s}"]"
#     pages.click
#     items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
#     totalitems = items.count
#     if totalitems >=2
#       puts "Here more 2 items with 4 star"
#     end
#     puts "Here name of these items:"
#     puts items.map  {|n| n.attribute("innerHTML")}
#     a = a+1
#   end
#
#
# end
#
#
#
#
#










# Then /^Check if more then 3 items with 5 stars on the page/ do
#
#   pages = $driver.find_elements :xpath => "//a[@class = 'results pageNumber']"
#
#   totalpages = pages.count-1
#   sleep 5
#   a = 1
#   for a in 2..totalpages do
#     pages = $driver.find_elements :xpath => "(//a[@class = 'results pageNumber'])["+a.to_s+"]"
#     pages[a].click
#     items = $driver.find_elements :xpath => "//div[@class = 'prodloop_cont'][.//div[text() = '4.0 stars']]//a[@class = 'prodtitle']"
#     totalitems = items.count
#     if totalitems >=3
#       puts "Here more 3 items"
#     end
#     puts "Here name of these items:"
#     puts items.map  {|n| n.attribute("innerHTML")}
#     a = a+1
#   end
#
#
# end




# Then /^Verify password$/ do
#   element = $driver.find_element :xpath => "//input[@id = 'confPasswrd']"
#   element.send_keys "Zxc123zxc"
#   sleep 8
# end



# Then /^Input password$/ do
#   element = $driver.find_element :xpath => "//input[@id = 'passwrd']"
#   element.send.keys "Zxc123zxc"
#   sleep 5
# end
# Then /^Enter valid information into verify password field$/ do
#   element = $driver.find_element :id => "confPasswrd"
#   element.send.keys "Zxc123zxc"
#   sleep 5
# end
#
# Then /^Click the SignIn button$/ do
#   element = $driver.find_element :id =>"signUpButton"
#   element.click
#   sleep 5
# end





# Then Click the SignIn in the dropDown
# Then Enter Valid information into email field
# Then Enter valid information into the password field
# Then Enter valid information into verify password field
# Then Click the “SignIn” button
# Then Verify that user is signed in







# Then /^Verify tht item  4 has 3.0 stars$/ do
#   element = $driver.find_element :xpath => "//div[@class = 'prStars'][contains (text(),\"3.0 stars\")][4]"
#   element = $driver.find_element :xpath => "//div[@class = 'prStars'][contains (text(),\"3.0 stars\")]"
#   element.click
# end



# Then /^Open site$/ do
#   $driver.get "http://www.toysrus.com"
#   $driver.manage.window.maximize
#   sleep 8
# end

# Then/^Click subcategory ([^"]*)$/ do |subcat|
#   element = $driver.find_element :xpath =>  "//img[@alt = '#{subcat}']"
#   element.click
#   sleep 8
# end
# # #
# #
# Then /^Pick ([^"]*) item$/ do |x|
#    element = $driver.find_element :xpath => "// img[@class = 'swatchProdImg'])['#{x}']"
#    element.click
#    sleep 10
# end


# Then /^Pick the item/ do
#   element = $driver.find_element :xpath => "//img[@class = 'swatchProdImg']"
#   element.click
#   sleep 15
# end
#
# Then /^Verify that 0 items in cart$/ do
#   $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '0']"
#   sleep 8
# end


# Then /^Pick 2 item$/ do
#   element = $driver.find_element :xpath => "(// img[@class = 'swatchProdImg'])[2]"
#   element.click
#   sleep 10
# end

# Then /^Open ([^"]*) category$/ do |x|
#   element = $driver.find_element :xpath => "//a[@class='mainNavLink' and text() = \"#{x}\"]"
#   element.click
#   sleep 8
# end

# Then /^Click the subcategory ([^"]*)$/ do |x|
#   element = $driver.find_element :xpath =>  "//img[@alt = '#{x}']"
#   element.click
#   sleep 8
# end
# Then /^Pick ([^"]*) item$/ do |x|
#   element = $driver.find_element :xpath => "(// img[@class = 'swatchProdImg'])['#{x}']"
#   element.click
#   sleep 10
# end
# Then /^Verify that ([^$]*) items in cart$/ do |x|
#   $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '#{x}]"
#   sleep 5
# end
# Then /^Click the subcategory ([^$]*)$/ do |x|
#   element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = '#{x}]']"
#   element.click
#   sleep 5
# end
# Then /^Click the Add to cart button$/ do
#   element = $driver.find_element :id => "cartAddition"
#   element.click
#   sleep 10
# end

# Then /^Click the category Age/ do
#   $driver.get "http://www.toysrus.com"
#   element = $driver.find_element :xpath => "//a[@class='mainNavLink' and text() = 'Age']"
#   element.click
# end
#
# Then /^Click the subcategory Big Kids/ do
#   element = $driver.find_element :xpath => "//div[@class='sliderWrapper']/p/a[text()='Big Kids']"
#   element.click
#   sleep 20
# end
#
# Then /^Pick the item/ do
#   element = $driver.find_element :xpath => "//img[@class = 'swatchProdImg']"
#   element.click
#   sleep 15
# end
#
# Then /^Then Click the button Add item to the Cart/ do
#   element = $driver.find_element :id => "cartAddition"
#   element.click
#   sleep 15
# end
#
# Then /^Verify that Item in cart/ do
#   element = $driver.find_element :xpath => "//span[@class ='cartItemCount' and text() = '1']"
#   element.click
#   sleep 10
# end
# Then /^Remove item from cart/ do
#    element = $driver.find_element :id => "remove-1"
#    element.click
#    sleep 10
# end
#
# Then /^Check that 3 items in cart$/ do
#   $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '3']"
#   sleep 8
# end
# Then /^Check that 1 items in cart$/ do
#   $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '1']"
#   sleep 8
# end

# Then /^Pick 3-d item$/ do
#   element = $driver.find_element :xpath => "(// img[@class = 'swatchProdImg'])[3]"
#   element.click
#   sleep 10
# end

# Then /^Open Age category$/ do
#     element = $driver.find_element :xpath => "//a[@class='mainNavLink' and text() = 'Age']"
#     element.click
#     sleep 5
# end
# Then /^Verify that 2 items in cart$/ do
#   $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '2']"
#   sleep 8
# end

# Then /^Open category Age$/ do
#   element = $driver.find_element :xpath => "//a[@class='mainNavLink' and text() = 'Age']"
#   element.click
#   sleep 5
# end
# Then /^Click the subcategory Big Kids$/ do
#   element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Big Kids']"
#   element.click
#   sleep 5
# end
# Then /^Click the subcategory Avigo$/ do
#   element = $driver.find_element :xpath =>  "//img[@alt = 'Avigo']"
#   element.click
#   sleep 8
# end
# Then /^Click the subcategory Big Kids$/ do
#   element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = 'Big Kids']"
#   element.click
#   sleep 5
# end
# Then /^Click the subcategory ([^"]*)$/ do |x|
#   element = $driver.find_element :xpath =>  "//img[@alt = '#{x}']"
#   element.click
#   sleep 8
# end
#Then /^Pick 3 item$/ do
#   element = $driver.find_element :xpath => "(// img[@class = 'swatchProdImg'])[3]"
#   element.click
#   sleep 10
# end

# Then /^Verify that 2 items in cart$/ do
#   $driver.find_element :xpath => "//span[@class = 'cartItemCount' and text() = '2']"
#   sleep 8
# end
# Then /^Click the subcategory 5 - 7 Years$/ do
#   element = $driver.find_element :xpath => "//div[@class = 'sliderWrapper']/p/a[text() = '5 - 7 Years']"
#   element.click
#   sleep 6
# end