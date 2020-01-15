# Restaurants-Farms

## Description

Restaurant has a name
Farm has many Fruits through FarmFruit
Fruit has many Farms through FarmFruit
Restaurant has many Farms through Orders
Farms has many Restaurants through Orders
Order has a `quantity`, a `Farm`, a `Fruit`, and a `Restaurant`

## Deliverables

- Restaurant: 
    - Should have an index page that lists every restaurant
    - When you click on the name of a restaurant from the index page it should take you to a show page for the restaurant that only shows it's `name` and a link to see a list of all of the restaurant's orders

- Orders:
    - Should be able to create a new Order and associate it with a `Restaurant`, a `Farm` and a `Fruit`. You should be able to create multiple orders from a single new Order form. The options of `Fruits` that an order can have should only be from the list of `Fruits` that the `Farm` owns. In other words, if the order is with Restuarant A and Farm B and Farm B only has apples and oranges, then the order can only be made with either apples and oranges and not bananas or avocados
    - Should be able to update and Order and change it's `quantity`, `Farm`, or `Fruits`
    - Order show page should show all of it's information


    *Hint* You may have to make changes to the schema to make this work