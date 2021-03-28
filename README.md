# Online Calori Calculation Program

###### It is an application where users can log in to the system, learn the calorie value of the food they choose, and control the daily calorie intake by recording in which meal they consume that food. When the user logs in to the site, he will be greeted with a very simple interface. The user will be able to create profiles and keep their personal information recorded in the system. After logging into the system, the user will be able to learn the calorie amount of the food he wants with the calorie calculator and will be able to record what meal he eats. At the end of the day, the user will be able to see the total calorie amount of the foods eaten from the profile section and thus realize a controlled nutrition plan.
------------


###### Entities

------------


- User
  - user_id
  - user_weight
  - user_height
  - user_mail
  - user_password
- Foods
  - food_id
  - food_name
  - food_calori
- Breakfast
  - breakfast_id
  - user_id
  - meal_id
  - meal_serving
  - date
- Lunch
  - lunch_id
  - user_id
  - meal_id
  - meal_serving
  - date
- Dinner
  - dinner_id
  - user_id
  - meal_id
  - meal_serving
  - date
