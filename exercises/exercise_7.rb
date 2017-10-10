require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts'Please enter a name you want to create a store with'

@suggested_store_name = $stdin.gets.chomp

store = Store.new(name: @suggested_store_name)
puts store.errors.full_messages unless store.save



### Exercise 7: Validations for both models

# * BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a 
# [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods)
#  - **don't** use a `Validator` class)
# 2. Ask the user for a store name (store it in a variable)
# 3. Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, 
# mens_apparel, and womens_apparel)
# 4. Display the error messages provided back from ActiveRecord to the user (one on each line) after 
# you attempt to save/create the record
