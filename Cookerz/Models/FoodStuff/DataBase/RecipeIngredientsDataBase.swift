//
//  RecipeingredientsDataBase.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 09/03/2025.
//

// It was all the ingredients needed to call the API in the form we wanted 
//(most the ingredients on the recipe were lacking some infos like their type)
var recipe0Ingredients : [Ingredient] = [
    Ingredient (name: "joue de boeuf", type: .meat, quantity: 1, unit: .kilogramme),
    Ingredient (name: "huile d'olive", type: .oil, quantity: 2, unit: .bigSpoon),
    Ingredient (name: "beurre", type: .dairy, quantity: 30, unit: .gramme),
    Ingredient (name: "oignons", type: .vegetable, quantity: 2, unit: .piece),
    Ingredient (name: "ail", type: .oil, quantity: 2, unit: .piece),
    Ingredient (name: "laurier", type: .vegetable, quantity: 2, unit: .leaf),
    Ingredient (name: "thym", type: .vegetable, quantity: 0.5, unit: .bunch),
    Ingredient (name: "cidre brut", type: .liquidBase, quantity: 750, unit: .miliLitre),
    Ingredient (name: "pomme", type: .oil, quantity: 700, unit: .gramme),
    Ingredient (name: "sucre", type: .sugar, quantity: 2, unit: .bigSpoon),
    Ingredient (name: "cannel", type: .spice, quantity: 1, unit: .bigSpoon)
]

var atelier0Ingredients : [Ingredient] = [
    Ingredient (name: "farine deblé", type: .flour, quantity: 50, unit: .gramme),
    Ingredient (name: "Sucre en poudre", type: .sugar, quantity: 100, unit: .gramme),
    Ingredient (name: "jaune d'oeufs", type: .egg, quantity: 4, unit: .piece),
    Ingredient (name: "lait 1/2 écrémé", type: .dairy, quantity: 0.5, unit: .kilogramme),
    Ingredient (name: "Gousse(s) de vanille", type: .spice, quantity: 1, unit: .piece),
    Ingredient (name: "crème liquide entière", type: .dairy, quantity: 300, unit: .miliLitre),
]


var ingredientsBase: [Ingredient] = [
    
    
    // fruit
    Ingredient(name: "Apples", type: .fruit),
    Ingredient(name: "Apricot", type: .fruit),
    Ingredient(name: "Dried Apricots", type: .fruit),
    Ingredient(name: "Banana", type: .fruit),
    Ingredient(name: "Blackberries", type: .fruit),
    Ingredient(name: "Blueberries", type: .fruit),
    Ingredient(name: "Braeburn Apples", type: .fruit),
    Ingredient(name: "Bramley Apples", type: .fruit),
    Ingredient(name: "Cherry", type: .fruit),
    Ingredient(name: "Desiccated Coconut", type: .fruit),
    Ingredient(name: "Currants", type: .fruit),
    Ingredient(name: "Glace Cherry", type: .fruit),
    Ingredient(name: "Dried Fruit", type: .fruit),
    Ingredient(name: "Figs", type: .fruit),
    Ingredient(name: "Fruit Mix", type: .fruit),
    Ingredient(name: "Lemon", type: .fruit),
    Ingredient(name: "Lemon Juice", type: .fruit),
    Ingredient(name: "Lemon Zest", type: .fruit),
    Ingredient(name: "Lemons", type: .fruit),
    Ingredient(name: "Lime", type: .fruit),
    Ingredient(name: "Medjool Dates", type: .fruit),
    Ingredient(name: "Mixed Peel", type: .fruit),
    Ingredient(name: "Orange", type: .fruit),
    Ingredient(name: "Orange Zest", type: .fruit),
    Ingredient(name: "Peaches", type: .fruit),
    Ingredient(name: "Pears", type: .fruit),
    Ingredient(name: "Prunes", type: .fruit),
    Ingredient(name: "Raisins", type: .fruit),
    Ingredient(name: "Raspberries", type: .fruit),
    Ingredient(name: "Redcurrants", type: .fruit),
    Ingredient(name: "Strawberries", type: .fruit),
    Ingredient(name: "Sultanas", type: .fruit),
    
    
    //  vegetable
    Ingredient(name: "Avocado", type: .vegetable),
    Ingredient(name: "Asparagus", type: .vegetable),
    Ingredient(name: "Aubergine", type: .vegetable),
    Ingredient(name: "Baby Aubergine", type: .vegetable),
    Ingredient(name: "Baby Plum Tomatoes", type: .vegetable),
    Ingredient(name: "Beetroot", type: .vegetable),
    Ingredient(name: "Black Olives", type: .vegetable),
    Ingredient(name: "Broccoli", type: .vegetable),
    Ingredient(name: "Brussels Sprouts", type: .vegetable),
    Ingredient(name: "Butternut Squash", type: .vegetable),
    Ingredient(name: "Cabbage", type: .vegetable),
    Ingredient(name: "Canned Tomatoes", type: .vegetable),
    Ingredient(name: "Cannellini Beans", type: .vegetable),
    Ingredient(name: "Capers", type: .vegetable),
    Ingredient(name: "Carrots", type: .vegetable),
    Ingredient(name: "Celeriac", type: .vegetable),
    Ingredient(name: "Celery", type: .vegetable),
    Ingredient(name: "Challots", type: .vegetable),
    Ingredient(name: "Charlotte Potatoes", type: .vegetable),
    Ingredient(name: "Cherry Tomatoes", type: .vegetable),
    Ingredient(name: "Chinese Broccoli", type: .vegetable),
    Ingredient(name: "Chopped Onion", type: .vegetable),
    Ingredient(name: "Chopped Tomatoes", type: .vegetable),
    Ingredient(name: "Courgettes", type: .vegetable),
    Ingredient(name: "Cucumber", type: .vegetable),
    Ingredient(name: "Diced Tomatoes", type: .vegetable),
    Ingredient(name: "Dill Pickles", type: .vegetable),
    Ingredient(name: "Egg Plants", type: .vegetable),
    Ingredient(name: "Fennel", type: .vegetable),
    Ingredient(name: "Fennel Bulb", type: .vegetable),
    Ingredient(name: "Fennel Seeds", type: .vegetable),
    Ingredient(name: "Floury Potatoes", type: .vegetable),
    Ingredient(name: "Garlic", type: .vegetable),
    Ingredient(name: "Garlic Clove", type: .vegetable),
    Ingredient(name: "Ginger", type: .vegetable),
    Ingredient(name: "Grape Tomatoes", type: .vegetable),
    Ingredient(name: "Green Olives", type: .vegetable),
    Ingredient(name: "Horseradish", type: .vegetable),
    Ingredient(name: "Iceberg Lettuce", type: .vegetable),
    Ingredient(name: "Jalapeno", type: .vegetable),
    Ingredient(name: "Jerusalem Artichokes", type: .vegetable),
    Ingredient(name: "Kale", type: .vegetable),
    Ingredient(name: "Leek", type: .vegetable),
    Ingredient(name: "Lettuce", type: .vegetable),
    Ingredient(name: "Little Gem Lettuce", type: .vegetable),
    Ingredient(name: "Minced Garlic", type: .vegetable),
    Ingredient(name: "Mulukhiyah", type: .vegetable),
    Ingredient(name: "Onion", type: .vegetable),
    Ingredient(name: "Onions", type: .vegetable),
    Ingredient(name: "Persian Cucumber", type: .vegetable),
    Ingredient(name: "Plum Tomatoes", type: .vegetable),
    Ingredient(name: "Potatoes", type: .vegetable),
    Ingredient(name: "Pumpkin", type: .vegetable),
    Ingredient(name: "Red Onions", type: .vegetable),
    Ingredient(name: "Rhubarb", type: .vegetable),
    Ingredient(name: "Roasted Vegetables", type: .vegetable),
    Ingredient(name: "Rocket", type: .vegetable),
    Ingredient(name: "Sauerkraut", type: .vegetable),
    Ingredient(name: "Scallions", type: .vegetable),
    Ingredient(name: "Scotch Bonnet", type: .vegetable),
    Ingredient(name: "Small Potatoes", type: .vegetable),
    Ingredient(name: "Spinach", type: .vegetable),
    Ingredient(name: "Spring Onions", type: .vegetable),
    Ingredient(name: "Squash", type: .vegetable),
    Ingredient(name: "Stir-fry Vegetables", type: .vegetable),
    Ingredient(name: "Sun-Dried Tomatoes", type: .vegetable),
    Ingredient(name: "Swede", type: .vegetable),
    Ingredient(name: "Sweetcorn", type: .vegetable),
    Ingredient(name: "Sweet Potatoes", type: .vegetable),
    Ingredient(name: "Tinned Tomatos", type: .vegetable),
    Ingredient(name: "Tofu", type: .vegetable),
    Ingredient(name: "Tomato", type: .vegetable),
    Ingredient(name: "Tomato Puree", type: .vegetable),
    Ingredient(name: "Tomatoes", type: .vegetable),
    Ingredient(name: "Pitted Black Olives", type: .vegetable),
    Ingredient(name: "Shallots", type: .vegetable),
    Ingredient(name: "Turmeric", type: .vegetable),
    Ingredient(name: "Turnips", type: .vegetable),
    Ingredient(name: "Vine Tomatoes", type: .vegetable),
    Ingredient(name: "Yellow Onion", type: .vegetable),
    Ingredient(name: "Yukon Gold Potatoes", type: .vegetable),
    Ingredient(name: "Zucchini", type: .vegetable),
    
    
    // beans
    Ingredient(name: "Baked Beans", type: .beans),
    Ingredient(name: "Bean Sprouts", type: .beans),
    Ingredient(name: "Black Beans", type: .beans),
    Ingredient(name: "Borlotti Beans", type: .beans),
    Ingredient(name: "Broad Beans", type: .beans),
    Ingredient(name: "Brown Lentils", type: .beans),
    Ingredient(name: "Butter Beans", type: .beans),
    Ingredient(name: "Chickpeas", type: .beans),
    Ingredient(name: "Chilli", type: .beans),
    Ingredient(name: "Couscous", type: .beans),
    Ingredient(name: "Fermented Black Beans", type: .beans),
    Ingredient(name: "French Lentils", type: .beans),
    Ingredient(name: "Frozen Peas", type: .beans),
    Ingredient(name: "Green Beans", type: .beans),
    Ingredient(name: "Green Chilli", type: .beans),
    Ingredient(name: "Green Red Lentils", type: .beans),
    Ingredient(name: "Haricot Beans", type: .beans),
    Ingredient(name: "Khus Khus", type: .beans),
    Ingredient(name: "Kidney Beans", type: .beans),
    Ingredient(name: "Lentils", type: .beans),
    Ingredient(name: "Mixed Grain", type: .beans),
    Ingredient(name: "Peas", type: .beans),
    Ingredient(name: "Pinto Beans", type: .beans),
    Ingredient(name: "Quinoa", type: .beans),
    Ingredient(name: "Refried Beans", type: .beans),
    Ingredient(name: "Sugar Snap Peas", type: .beans),
 

    //mushroom
    Ingredient(name: "Chestnut Mushroom", type: .mushroom),
    Ingredient(name: "Mushrooms", type: .mushroom),
    Ingredient(name: "Shiitake Mushrooms", type: .mushroom),
    Ingredient(name: "Wild Mushrooms", type: .mushroom),
    Ingredient(name: "Wood Ear Mushrooms", type: .mushroom),
    
    
    //nuts
    Ingredient(name: "Almonds", type: .nuts),
    Ingredient(name: "Almond Extract", type: .nuts),
    Ingredient(name: "Cashew Nuts", type: .nuts),
    Ingredient(name: "Cashews", type: .nuts),
    Ingredient(name: "Chestnuts", type: .nuts),
    Ingredient(name: "Flaked Almonds", type: .nuts),
    Ingredient(name: "Flax Eggs", type: .nuts),
    Ingredient(name: "Ground Almonds", type: .nuts),
    Ingredient(name: "Hazlenuts", type: .nuts),
    Ingredient(name: "Nutmeg", type: .nuts),
    Ingredient(name: "Oatmeal", type: .nuts),
    Ingredient(name: "Oats", type: .nuts),
    Ingredient(name: "Peanuts", type: .nuts),
    Ingredient(name: "Pecan Nuts", type: .nuts),
    Ingredient(name: "Pine Nuts", type: .nuts),
    Ingredient(name: "Rolled Oats", type: .nuts),
    Ingredient(name: "Sesame Seed", type: .nuts),
    Ingredient(name: "Tamarind Ball", type: .nuts),
    Ingredient(name: "Toor Dal", type: .nuts),
    Ingredient(name: "Walnuts", type: .nuts),
    Ingredient(name: "Water Chestnut", type: .nuts),
    
    
    //  herb
    Ingredient(name: "Basil", type: .herb),
    Ingredient(name: "Bay Leaf", type: .herb),
    Ingredient(name: "Bay Leaves", type: .herb),
    Ingredient(name: "Basil Leaves", type: .herb),
    Ingredient(name: "Bouquet Garni", type: .herb),
    Ingredient(name: "Chives", type: .herb),
    Ingredient(name: "Chopped Parsley", type: .herb),
    Ingredient(name: "Cilantro", type: .herb),
    Ingredient(name: "Coriander Leaves", type: .herb),
    Ingredient(name: "Dill", type: .herb),
    Ingredient(name: "Dried Oregano", type: .herb),
    Ingredient(name: "Fenugreek", type: .herb),
    Ingredient(name: "Fresh Basil", type: .herb),
    Ingredient(name: "Fresh Thyme", type: .herb),
    Ingredient(name: "Freshly Chopped Parsley", type: .herb),
    Ingredient(name: "Marjoram", type: .herb),
    Ingredient(name: "Mint", type: .herb),
    Ingredient(name: "Oregano", type: .herb),
    Ingredient(name: "Parsley", type: .herb),
    Ingredient(name: "Rosemary", type: .herb),
    Ingredient(name: "Sage", type: .herb),
    Ingredient(name: "Tarragon Leaves", type: .herb),
    Ingredient(name: "Thyme", type: .herb),
    Ingredient(name: "Vine Leaves", type: .herb),
    
    
    //  meat
    Ingredient(name: "Chicken", type: .meat),
    Ingredient(name: "Bacon", type: .meat),
    Ingredient(name: "Beef", type: .meat),
    Ingredient(name: "Beef Brisket", type: .meat),
    Ingredient(name: "Beef Shin", type: .meat),
    Ingredient(name: "Beef Fillet", type: .meat),
    Ingredient(name: "Beef Gravy", type: .meat),
    Ingredient(name: "Beef Kidney", type: .meat),
    Ingredient(name: "Beef Stock", type: .meat),
    Ingredient(name: "Beef Stock Concentrate", type: .meat),
    Ingredient(name: "Chicken Breast", type: .meat),
    Ingredient(name: "Chicken Breasts", type: .meat),
    Ingredient(name: "Chicken Legs", type: .meat),
    Ingredient(name: "Chicken Stock", type: .meat),
    Ingredient(name: "Chicken Stock Concentrate", type: .meat),
    Ingredient(name: "Chicken Stock Cube", type: .meat),
    Ingredient(name: "Chicken Thighs", type: .meat),
    Ingredient(name: "Chorizo", type: .meat),
    Ingredient(name: "Doner Meat", type: .meat),
    Ingredient(name: "Duck", type: .meat),
    Ingredient(name: "Duck Fat", type: .meat),
    Ingredient(name: "Duck Legs", type: .meat),
    Ingredient(name: "Ham", type: .meat),
    Ingredient(name: "Goat Meat", type: .meat),
    Ingredient(name: "Ground Beef", type: .meat),
    Ingredient(name: "Ground Pork", type: .meat),
    Ingredient(name: "Goose Fat", type: .meat),
    Ingredient(name: "Italian Fennel Sausages", type: .meat),
    Ingredient(name: "Kielbasa", type: .meat),
    Ingredient(name: "Lamb", type: .meat),
    Ingredient(name: "Lamb Kidney", type: .meat),
    Ingredient(name: "Lamb Leg", type: .meat),
    Ingredient(name: "Lamb Loin Chops", type: .meat),
    Ingredient(name: "Lamb Mince", type: .meat),
    Ingredient(name: "Lamb Shoulder", type: .meat),
    Ingredient(name: "Lard", type: .meat),
    Ingredient(name: "Lean Minced Beef", type: .meat),
    Ingredient(name: "Minced Beef", type: .meat),
    Ingredient(name: "Minced Pork", type: .meat),
    Ingredient(name: "Oxtail", type: .meat),
    Ingredient(name: "Parma Ham", type: .meat),
    Ingredient(name: "Polish Sausage", type: .meat),
    Ingredient(name: "Pork", type: .meat),
    Ingredient(name: "Pork Chops", type: .meat),
    Ingredient(name: "Sausages", type: .meat),
    Ingredient(name: "Suet", type: .meat),
    Ingredient(name: "Tripe", type: .meat),
    Ingredient(name: "Turkey Mince", type: .meat),
    Ingredient(name: "Veal", type: .meat),
   

    //  fish
    Ingredient(name: "Anchovy Fillet", type: .fish),
    Ingredient(name: "Cod", type: .fish),
    Ingredient(name: "Fish Stock", type: .fish),
    Ingredient(name: "Haddock", type: .fish),
    Ingredient(name: "Herring", type: .fish),
    Ingredient(name: "Smoked Haddock", type: .fish),
    Ingredient(name: "Mackerel", type: .fish),
    Ingredient(name: "Monkfish", type: .fish),
    Ingredient(name: "Pilchards", type: .fish),
    Ingredient(name: "Red Snapper", type: .fish),
    Ingredient(name: "Salmon", type: .fish),
    Ingredient(name: "Smoked Salmon", type: .fish),
    Ingredient(name: "Sardines", type: .fish),
    Ingredient(name: "Squid", type: .fish),
    Ingredient(name: "Baby Squid", type: .fish),
    Ingredient(name: "Tuna", type: .fish),
    Ingredient(name: "White Fish", type: .fish),
    Ingredient(name: "White Fish Fillets", type: .fish),
    
    
    //seaFood
    Ingredient(name: "Clams", type: .seaFood),
    Ingredient(name: "King Prawns", type: .seaFood),
    Ingredient(name: "Mussels", type: .seaFood),
    Ingredient(name: "Oysters", type: .seaFood),
    Ingredient(name: "Prawns", type: .seaFood),
    Ingredient(name: "Raw King Prawns", type: .seaFood),
    Ingredient(name: "Tiger Prawns", type: .seaFood),
    
    
    //dairy
    Ingredient(name: "Almond Milk", type: .veganDairy),
    Ingredient(name: "Brie", type: .dairy),
    Ingredient(name: "Butter", type: .dairy),
    Ingredient(name: "Unsalted Butter", type: .dairy),
    Ingredient(name: "Cheddar Cheese", type: .dairy),
    Ingredient(name: "Cheese", type: .dairy),
    Ingredient(name: "Cheese Curds", type: .dairy),
    Ingredient(name: "Cheese Slices", type: .dairy),
    Ingredient(name: "Chilled Butter", type: .dairy),
    Ingredient(name: "Clotted Cream", type: .dairy),
    Ingredient(name: "Colby Jack Cheese", type: .dairy),
    Ingredient(name: "Condensed Milk", type: .dairy),
    Ingredient(name: "Cream", type: .dairy),
    Ingredient(name: "Cream Cheese", type: .dairy),
    Ingredient(name: "Creme Fraiche", type: .dairy),
    Ingredient(name: "Cubed Feta Cheese", type: .dairy),
    Ingredient(name: "Custard", type: .dairy),
    Ingredient(name: "Custard Powder", type: .dairy),
    Ingredient(name: "Double Cream", type: .dairy),
    Ingredient(name: "Feta", type: .dairy),
    Ingredient(name: "Fromage Frais", type: .dairy),
    Ingredient(name: "Full Fat Yogurt", type: .dairy),
    Ingredient(name: "Goats Cheese", type: .dairy),
    Ingredient(name: "Gouda Cheese", type: .dairy),
    Ingredient(name: "Greek Yogurt", type: .dairy),
    Ingredient(name: "Gruyère", type: .dairy),
    Ingredient(name: "Heavy Cream", type: .dairy),
    Ingredient(name: "Ice Cream", type: .dairy),
    Ingredient(name: "Mascarpone", type: .dairy),
    Ingredient(name: "Milk", type: .dairy),
    Ingredient(name: "Monterey Jack Cheese", type: .dairy),
    Ingredient(name: "Mozzarella", type: .dairy),
    Ingredient(name: "Mozzarella Balls", type: .dairy),
    Ingredient(name: "Paneer", type: .dairy),
    Ingredient(name: "Parmesan", type: .dairy),
    Ingredient(name: "Parmesan Cheese", type: .dairy),
    Ingredient(name: "Parmigiano-reggiano", type: .dairy),
    Ingredient(name: "Pecorino", type: .dairy),
    Ingredient(name: "Ricotta", type: .dairy),
    Ingredient(name: "Salted Butter", type: .dairy),
    Ingredient(name: "Semi-skimmed Milk", type: .dairy),
    Ingredient(name: "Shortening", type: .dairy),
    Ingredient(name: "Shredded Mexican Cheese", type: .dairy),
    Ingredient(name: "Shredded Monterey Jack Cheese", type: .dairy),
    Ingredient(name: "Single Cream", type: .dairy),
    Ingredient(name: "Stilton Cheese", type: .dairy),
    Ingredient(name: "Sour Cream", type: .dairy),
    Ingredient(name: "Whole Milk", type: .dairy),
    Ingredient(name: "Yogurt", type: .dairy),
    
    
    // veganDairy
    Ingredient(name: "Coconut Cream", type: .veganDairy),
    Ingredient(name: "Coconut Milk", type: .veganDairy),
    Ingredient(name: "Ghee", type: .veganDairy),
    Ingredient(name: "Peanut Butter", type: .veganDairy),
    Ingredient(name: "Soya Milk", type: .veganDairy),
    Ingredient(name: "Vegan Butter", type: .veganDairy),
    
    
    //oil
    Ingredient(name: "Oil", type: .oil),
    Ingredient(name: "Olive Oil", type: .oil),
    
    
    //  vinegar
    Ingredient(name: "Apple Cider Vinegar", type: .vinegar),
    Ingredient(name: "Balsamic Vinegar", type: .vinegar),
    Ingredient(name: "Vinaigrette Dressing", type: .vinegar),
    Ingredient(name: "Vinegar", type: .vinegar),
    Ingredient(name: "White Vinegar", type: .vinegar),
    Ingredient(name: "Malt Vinegar", type: .vinegar),
    Ingredient(name: "Red Wine Vinegar", type: .vinegar),
    Ingredient(name: "Rice Vinegar", type: .vinegar),
    Ingredient(name: "White Wine Vinegar", type: .vinegar),
    
    
    //sauce
    Ingredient(name: "Barbeque Sauce", type: .sauce),
    Ingredient(name: "Dark Soy Sauce", type: .sauce),
    Ingredient(name: "Dijon Mustard", type: .sauce),
    Ingredient(name: "Doubanjiang", type: .sauce),
    Ingredient(name: "Duck Sauce", type: .sauce),
    Ingredient(name: "Enchilada Sauce", type: .sauce),
    Ingredient(name: "English Mustard", type: .sauce),
    Ingredient(name: "Fish Sauce", type: .sauce),
    Ingredient(name: "Garlic Sauce", type: .sauce),
    Ingredient(name: "Gherkin Relish", type: .sauce),
    Ingredient(name: "Ginger Cordial", type: .sauce),
    Ingredient(name: "Ginger Garlic Paste", type: .sauce),
    Ingredient(name: "Ginger Paste", type: .sauce),
    Ingredient(name: "Gochujang", type: .sauce),
    Ingredient(name: "Green Salsa", type: .sauce),
    Ingredient(name: "Hotsauce", type: .sauce),
    Ingredient(name: "Granulated Sugar", type: .sauce),
    Ingredient(name: "Madras Paste", type: .sauce),
    Ingredient(name: "Massaman Curry Paste", type: .sauce),
    Ingredient(name: "Mayonnaise", type: .sauce),
    Ingredient(name: "Mustard", type: .sauce),
    Ingredient(name: "Mustard Powder", type: .sauce),
    Ingredient(name: "Mustard Seeds", type: .sauce),
    Ingredient(name: "Oyster Sauce", type: .sauce),
    Ingredient(name: "Passata", type: .sauce),
    Ingredient(name: "Salsa", type: .sauce),
    Ingredient(name: "Soy Sauce", type: .sauce),
    Ingredient(name: "Sriracha", type: .sauce),
    Ingredient(name: "Tabasco Sauce", type: .sauce),
    Ingredient(name: "Tahini", type: .sauce),
    Ingredient(name: "Tamarind Paste", type: .sauce),
    Ingredient(name: "Thai Fish Sauce", type: .sauce),
    Ingredient(name: "Thai Green Curry Paste", type: .sauce),
    Ingredient(name: "Thai Red Curry Paste", type: .sauce),
    Ingredient(name: "Tomato Ketchup", type: .sauce),
    Ingredient(name: "Tomato Sauce", type: .sauce),
    Ingredient(name: "Worcestershire Sauce", type: .sauce),
    
    
    //sugar
    Ingredient(name: "Black Treacle", type: .sugar),
    Ingredient(name: "Brown Sugar", type: .sugar),
    Ingredient(name: "Caster Sugar", type: .sugar),
    Ingredient(name: "Coco Sugar", type: .sugar),
    Ingredient(name: "Dark Brown Sugar", type: .sugar),
    Ingredient(name: "Dark Brown Soft Sugar", type: .sugar),
    Ingredient(name: "Dark Soft Brown Sugar", type: .sugar),
    Ingredient(name: "Demerara Sugar", type: .sugar),
    Ingredient(name: "Icing Sugar", type: .sugar),
    Ingredient(name: "Light Brown Soft Sugar", type: .sugar),
    Ingredient(name: "Muscovado Sugar", type: .sugar),
    Ingredient(name: "Powdered Sugar", type: .sugar),
    Ingredient(name: "Sugar", type: .sugar),
    
    
    //sugary
    Ingredient(name: "Apricot Jam", type: .sugary),
    Ingredient(name: "Candied Peel", type: .sugary),
    Ingredient(name: "Caramel", type: .sugary),
    Ingredient(name: "Caramel Sauce", type: .sugary),
    Ingredient(name: "Jam", type: .sugary),
    Ingredient(name: "Mars Bar", type: .sugary),
    Ingredient(name: "Marzipan", type: .sugary),
    Ingredient(name: "Miniature Marshmallows", type: .sugary),
    Ingredient(name: "Raspberry Jam", type: .sugary),
    Ingredient(name: "Toffee Popcorn", type: .sugary),
    Ingredient(name: "Treacle", type: .sugary),
    
   
    //egg
    Ingredient(name: "Egg", type: .egg),
    Ingredient(name: "Egg White", type: .egg),
    Ingredient(name: "Egg Yolks", type: .egg),
    Ingredient(name: "Eggs", type: .egg),
    Ingredient(name: "Free-range Egg, Beaten", type: .egg),
    Ingredient(name: "Free-range Eggs, Beaten", type: .egg),
    
    
    // rice
    Ingredient(name: "Basmati Rice", type: .rice),
    Ingredient(name: "Brown Rice", type: .rice),
    Ingredient(name: "Jasmine Rice", type: .rice),
    Ingredient(name: "Paella Rice", type: .rice),
    Ingredient(name: "Rice", type: .rice),
    Ingredient(name: "Rice Krispies", type: .rice),
    Ingredient(name: "Rice Noodles", type: .rice),
    Ingredient(name: "Rice Stick Noodles", type: .rice),
    Ingredient(name: "Rice Vermicelli", type: .rice),
    Ingredient(name: "Sushi Rice", type: .rice),
    
    
    // pasta
    Ingredient(name: "Bowtie Pasta", type: .pasta),
    Ingredient(name: "Farfalle", type: .pasta),
    Ingredient(name: "Fettuccine", type: .pasta),
    Ingredient(name: "Fideo", type: .pasta),
    Ingredient(name: "Linguine Pasta", type: .pasta),
    Ingredient(name: "Macaroni", type: .pasta),
    Ingredient(name: "Noodles", type: .pasta),
    Ingredient(name: "Paccheri Pasta", type: .pasta),
    Ingredient(name: "Pappardelle Pasta", type: .pasta),
    Ingredient(name: "Penne Rigate", type: .pasta),
    Ingredient(name: "Rigatoni", type: .pasta),
    Ingredient(name: "Spaghetti", type: .pasta),
    Ingredient(name: "Tagliatelle", type: .pasta),
    Ingredient(name: "Udon Noodles", type: .pasta),
    Ingredient(name: "Vermicelli Pasta", type: .pasta),
    Ingredient(name: "White Chocolate", type: .cacao),
    
    
    //salt
    Ingredient(name: "Celery Salt", type: .salt),
    Ingredient(name: "Kosher Salt", type: .salt),
    Ingredient(name: "Onion Salt", type: .salt),
    Ingredient(name: "Salt", type: .salt),
    Ingredient(name: "Sea Salt", type: .salt),
    
    
    // pepper
    Ingredient(name: "Black Pepper", type: .pepper),
    Ingredient(name: "Cayenne Pepper", type: .pepper),
    Ingredient(name: "Green Pepper", type: .pepper),
    Ingredient(name: "Pepper", type: .pepper),
    Ingredient(name: "Red Pepper", type: .pepper),
    Ingredient(name: "Red Pepper Flakes", type: .pepper),
    Ingredient(name: "Sichuan Pepper", type: .pepper),
    Ingredient(name: "Yellow Pepper", type: .pepper),
    
    
    //cacao
    Ingredient(name: "Cacao", type: .cacao),
    Ingredient(name: "Chocolate Chips", type: .cacao),
    Ingredient(name: "Cocoa", type: .cacao),
    Ingredient(name: "Dark Chocolate Chips", type: .cacao),
    Ingredient(name: "Milk Chocolate", type: .cacao),
    Ingredient(name: "Dark Chocolate", type: .cacao),
    Ingredient(name: "Plain Chocolate", type: .cacao),
    Ingredient(name: "White Chocolate Chips", type: .cacao),
    
    
    //spice
    Ingredient(name: "Ancho Chillies", type: .spice),
    Ingredient(name: "Allspice", type: .spice),
    Ingredient(name: "Biryani Masala", type: .spice),
    Ingredient(name: "Cajun", type: .spice),
    Ingredient(name: "Caraway Seed", type: .spice),
    Ingredient(name: "Cardamom", type: .spice),
    Ingredient(name: "Chili Powder", type: .spice),
    Ingredient(name: "Chilli Powder", type: .spice),
    Ingredient(name: "Cinnamon", type: .spice),
    Ingredient(name: "Cinnamon Stick", type: .spice),
    Ingredient(name: "Cloves", type: .spice),
    Ingredient(name: "Coriander", type: .spice),
    Ingredient(name: "Coriander Seeds", type: .spice),
    Ingredient(name: "Cumin", type: .spice),
    Ingredient(name: "Cumin Seeds", type: .spice),
    Ingredient(name: "Curry Powder", type: .spice),
    Ingredient(name: "Fajita Seasoning", type: .spice),
    Ingredient(name: "Garam Masala", type: .spice),
    Ingredient(name: "Garlic Powder", type: .spice),
    Ingredient(name: "Ground Cumin", type: .spice),
    Ingredient(name: "Ground Ginger", type: .spice),
    Ingredient(name: "Harissa Spice", type: .spice),
    Ingredient(name: "Italian Seasoning", type: .spice),
    Ingredient(name: "Mixed Spice", type: .spice),
    Ingredient(name: "Mincemeat", type: .spice),
    Ingredient(name: "Paprika", type: .spice),
    Ingredient(name: "Ras el hanout", type: .spice),
    Ingredient(name: "Red Chilli Flakes", type: .spice),
    Ingredient(name: "Red Chilli", type: .spice),
    Ingredient(name: "Red Chilli Powder", type: .spice),
    Ingredient(name: "Saffron", type: .spice),
    Ingredient(name: "Smoked Paprika", type: .spice),
    Ingredient(name: "Smoky Paprika", type: .spice),
    Ingredient(name: "Star Anise", type: .spice),
    Ingredient(name: "Turmeric Powder", type: .spice),
    Ingredient(name: "Vanilla", type: .spice),
    Ingredient(name: "Vanilla Extract", type: .spice),
    Ingredient(name: "Vegetable Stock", type: .spice),
    Ingredient(name: "Vegetable Stock Cube", type: .spice),
   
   
    // bakingStuff
    Ingredient(name: "Baking Powder", type: .backingStuff),
    Ingredient(name: "Bicarbonate Of Soda", type: .backingStuff),
    Ingredient(name: "Red Food Colouring", type: .backingStuff),
    Ingredient(name: "Pink Food Colouring", type: .backingStuff),
    Ingredient(name: "Blue Food Colouring", type: .backingStuff),
    Ingredient(name: "Yellow Food Colouring", type: .backingStuff),
    Ingredient(name: "Gelatine Leafs", type: .backingStuff),
    Ingredient(name: "Yeast", type: .backingStuff),
    
    
    // liquor

    
    // bread
    Ingredient(name: "Baguette", type: .bread),
    Ingredient(name: "Bread", type: .bread),
    Ingredient(name: "Breadcrumbs", type: .bread),
    Ingredient(name: "Bread Rolls", type: .bread),
    Ingredient(name: "Bun", type: .bread),
    Ingredient(name: "Buns", type: .bread),
    Ingredient(name: "Ciabatta", type: .bread),
    Ingredient(name: "Corn Tortillas", type: .bread),
    Ingredient(name: "Crusty Bread", type: .bread),
    Ingredient(name: "Flour Tortilla", type: .bread),
    Ingredient(name: "Hard Taco Shells", type: .bread),
    Ingredient(name: "Lasagne Sheets", type: .bread),
    Ingredient(name: "Naan Bread", type: .bread),
    Ingredient(name: "Pita Bread", type: .bread),
    Ingredient(name: "Potatoe Buns", type: .bread),
    Ingredient(name: "Sesame Seed Burger Buns", type: .bread),
    Ingredient(name: "Tortillas", type: .bread),
    Ingredient(name: "Wholegrain Bread", type: .bread),
    
    
    //liquidBase
    Ingredient(name: "Boiling Water", type: .liquidBase),
    Ingredient(name: "Cold Water", type: .liquidBase),
    Ingredient(name: "Hot Beef Stock", type: .liquidBase),
    Ingredient(name: "Mirin", type: .liquidBase),
    Ingredient(name: "Orange Blossom Water", type: .liquidBase),
    Ingredient(name: "Pickle Juice", type: .liquidBase),
    Ingredient(name: "Rose water", type: .liquidBase),
    Ingredient(name: "Warm Water", type: .liquidBase),
    Ingredient(name: "Water", type: .liquidBase),
    
    
    // flour
    Ingredient(name: "Bulgur Wheat", type: .flour),
    Ingredient(name: "Buckwheat", type: .flour),
    Ingredient(name: "Corn Flour", type: .flour),
    Ingredient(name: "Cornstarch", type: .flour),
    Ingredient(name: "Flour", type: .flour),
    Ingredient(name: "Plain Flour", type: .flour),
    Ingredient(name: "Potato Starch", type: .flour),
    Ingredient(name: "Self-raising Flour", type: .flour),
    Ingredient(name: "Starch", type: .flour),
    Ingredient(name: "White Flour", type: .flour),
    Ingredient(name: "Whole Wheat", type: .flour),
   
    
    //dough
    Ingredient(name: "Pizza dough", type: .flour),

    
    //dish
    Ingredient(name: "Creamed Corn", type: .dish),
    Ingredient(name: "Egg Rolls", type: .dish),
    Ingredient(name: "Fries", type: .dish),
    Ingredient(name: "Wonton Skin", type: .dish),
   
    
    //pastry
    Ingredient(name: "Black Pudding", type: .pastry),
    Ingredient(name: "Christmas Pudding", type: .pastry),
    Ingredient(name: "Digestive Biscuits", type: .pastry),
    Ingredient(name: "English Muffins", type: .pastry),
    Ingredient(name: "Filo Pastry", type: .pastry),
    Ingredient(name: "Meringue Nests", type: .pastry),
    Ingredient(name: "Muffins", type: .pastry),
    Ingredient(name: "Peanut Brittle", type: .pastry),
    Ingredient(name: "Peanut Cookies", type: .pastry),
    Ingredient(name: "Pretzels", type: .pastry),
    Ingredient(name: "Shortcrust Pastry", type: .pastry),
    
    
    //wine
    Ingredient(name: "Cider", type: .wine),
    Ingredient(name: "Cooking wine", type: .wine),
    Ingredient(name: "Dry White Wine", type: .wine),
    Ingredient(name: "Prosciutto", type: .wine),
    Ingredient(name: "Red Wine", type: .wine),
    Ingredient(name: "Red Wine Jelly", type: .wine),
    Ingredient(name: "Rice wine", type: .wine),
    Ingredient(name: "Sherry", type: .wine),
    Ingredient(name: "White Wine", type: .wine),
    
    
    //oil
    Ingredient(name: "Canola Oil", type: .oil),
    Ingredient(name: "Extra Virgin Olive Oil", type: .oil),
    Ingredient(name: "Peanut Oil", type: .oil),
    Ingredient(name: "Rapeseed Oil", type: .oil),
    Ingredient(name: "Sesame Seed Oil", type: .oil),
    Ingredient(name: "Sunflower Oil", type: .oil),
    Ingredient(name: "Truffle Oil", type: .oil),
    Ingredient(name: "Vegetable Oil", type: .oil),
    
    
    //syrup
    Ingredient(name: "Golden Syrup", type: .syrup),
    Ingredient(name: "Honey", type: .syrup),
    Ingredient(name: "Maple Syrup", type: .syrup),
    
    
    //alcohol
    Ingredient(name: "Brandy", type: .alcohol),
    Ingredient(name: "Dark Rum", type: .alcohol),
    Ingredient(name: "Grand Marnier", type: .alcohol),
    Ingredient(name: "Light Rum", type: .alcohol),
    Ingredient(name: "Rum", type: .alcohol),
    Ingredient(name: "Sake", type: .alcohol),
    Ingredient(name: "Stout", type: .alcohol),
    
    ]
