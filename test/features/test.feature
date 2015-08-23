Feature: home work 2
  #1
  Scenario: Add items from different subcategories

    Then Open category Brand and click subcategory Animal Planet
    Then Open Dinosaurs
    Then Pick 1 item
    Then Click the button Add Item to the Cart
    Then Verify that 1 items in cart
    Then Go home
    Then Open Age category and click the subcategory Big Kids
    Then Pick 3 item
    Then Click the button Add Item to the Cart
    Then Verify that 2 items in cart

#2
Scenario: Add 2 identical item to the cart for category Clearance

  Then Click category Clearance
  Then Click the subcategory Electronics
  Then Pick 2 item
  Then Click the button Add Item to the Cart
  Then Click the button Add Item to the Cart
  Then Verify that 2 items in cart
  #3
#Scenario: Add 1 item from the category Age and 1 item from the category Brand
#
#  Then Open Age category and click the subcategory Big Kids
#  Then Pick 2 item
#  Then Click the button Add Item to the Cart
#  Then Go home
#  Then Open category Brand and click subcategory Avigo
#  Then Pick 2 item
#  Then Click the button Add Item to the Cart
#  Then Verify that 2 items in cart
#4
Scenario: Remove item from the Cart

  Then Open Age category and click the subcategory Big Kids
  Then Pick 1 item
  Then Click the button Add Item to the Cart
  Then Open My cart
  Then Tap remove button
  Then Verify that 0 items in cart

#4
Scenario: Add 2 identical items to the cart for category Age SubCategory 5 - 7 Years old

    Then Open Age category and click the subcategory 5 - 7 Years
    Then Pick 1 item
    Then Change items from 1 to 2
    Then Click the button Add Item to the Cart
    Then Verify that 2 items in cart

#5
Scenario: Add 3-d item to the cart for category Girls' Toys 8-11 years old
  Then Open Girls' Toys the category
  Then Click the 8-11 Years subcategory
  Then Pick 3 item
  Then Click the button Add Item to the Cart
  Then Verify that 1 items in cart

#6
Scenario: Check navigation to the Weekly Add page
  Then Open site
  Then Click Weekly Add page button at the top of page
  Then Verify that user on the Weekly Add page
#7
Scenario: Check navigation to the Gift Founder
    Then Open site
    Then Click Gift Founder page buttom at the top of page
    Then Verify then user on the Gift Founder page


#8
  Scenario: Search Dress and verify that first item  displays Doll

  Then Search Dress
  Then Verify that 3 item displays Dress
#9
Scenario: Register user and login
  Then Click the MyAccoutSign In link on the top Nav bar
  Then Click the SignIn in the dropDown
  Then Enter Valid information into email field
  Then Input password
  Then Tap SignIn button
#  Then Verify that user loged in

#10
Scenario: Add 1 item from the category Age and 1 item from the category Brand

  Then Open Age category and click the subcategory Big Kids
  Then Pick 3 item
  Then Click the button Add Item to the Cart
  Then Go home

#11
Scenario: Find all items with 4 stars and unavailable for Free pick up

    Then Open Age category and click the subcategory Big Kids
    Then Find all items with 4 stars and unavailable for Free pick up

#12
Scenario:Open subcategory Big Kids by moving mouse
  Then Open Age category and click the subcategory Big Kids
  Then I create loop


Scenario:Verify that amount items with 2 stars on each page more then 0 if condition is not met raise an error

  Then Open Age category and click the subcategory Big Kids
  Then Check if more then 3 items with 4 stars on the page

Scenario: Create loop that go through pages and print out message (or elements), if page has more then 3 elements with 5 stars
    Then Open Age category and click the subcategory Big Kids
    Then Verify that amount items with 2 stars on each page more then 0 if condition is not met raise an error

# 14
 Scenario: Create loop that goes through pages and prints out 5 star elements, if page has more then 3 elements with 5 stars
    Then Open Age category and click the subcategory Big Kids
    Then Create loop that goes through pages and prints out 5 star elements, if page has more then 3 elements with 5 stars




#  1. Create Condition for LogIn/LogOut scenario (The one we were working on in the class)
#  2. Create Condition statement for the pop up that shows up when trying to add item to teh cart
#  3. Go to the Big Kids Subcategory and try to print out list of available items that have 4 stars review and are not available for the Free pick up



#  Scenario: Add items from different subcategories
#  Then Open site
#  Then Open Brand category
#  Then Click subcategory Animal Planet
#  Then Open Dinosaurs
#  Then Pick 1 item
#  Then Click the button Add Item to the Cart
#  Then Verify that 1 items in cart
#  Then Go home
#  Then Open Age category
#  Then Click the subcategory Big Kids
#  Then Pick 1 item
#  Then Click the button Add Item to the Cart
#  Then Verify that 2 items in cart
#  Then Verify that Weekly Add page was opened
##9
#Scenario: Check navigation to the Gift Founder
#
#
#

#Feature: New Test
#  Scenario: Add item to the cart
#   Then Click the category Age
#   Then Click the subcategory Big Kids
#   Then Pick the item
#   Then Then Click the button Add item to the Cart
#   Then Verify that Item in cart
#   Then Remove item from cart



#Feature: acceptance test
#
#  Scenario: LogIn
#    Then Test




#Feature : ToysRus test
#
#  Scenario Add item to the cart
#    Then Click the category Age
##    Then Click the subcategory Big Kids
##    Then Pick the item
##    Then Click the button Add item to the Cart
##    Then Verify that Item in cart
