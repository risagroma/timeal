class Meal {
  String name;
  String category;
  String description;
  String area;
  String tags;
  String imageAsset;

  Meal({
    required this.name,
    required this.category,
    required this.description,
    required this.area,
    required this.tags,
    required this.imageAsset,
  });
}

var mealList = [
  Meal(
    name: 'BeaverTails',
    category: 'Dessert',
    description:
    'In the bowl of a stand mixer, add warm water, a big pinch of sugar and yeast. Allow to sit until frothy.\r\nInto the same bowl, add 1/2 cup sugar, warm milk, melted butter, eggs and salt, and whisk until combined.\r\nPlace a dough hook on the mixer, add the flour with the machine on, until a smooth but slightly sticky dough forms.\r\nPlace dough in a bowl, cover with plastic wrap, and allow to proof for 1 1/2 hours.\r\nCut dough into 12 pieces, and roll out into long oval-like shapes about 1/4 inch thick that resemble a beaver’s tail.\r\nIn a large, deep pot, heat oil to 350 degrees. Gently place beavertail dough into hot oil and cook for 30 to 45 seconds on each side until golden brown.\r\nDrain on paper towels, and garnish as desired. Toss in cinnamon sugar, in white sugar with a squeeze of lemon, or with a generous slathering of Nutella and a handful of toasted almonds. Enjoy!',
    area: 'Canadian',
    tags: 'Treat,Pudding,Speciality',
    imageAsset: 'https://www.themealdb.com/images/media/meals/ryppsv1511815505.jpg',
  ),
  Meal(
    name: 'Breakfast Potatoes',
    category: 'Breakfast',
    description:
    "Before you do anything, freeze your bacon slices that way when you're ready to prep, it'll be so much easier to chop!\r\nWash the potatoes and cut medium dice into square pieces. To prevent any browning, place the already cut potatoes in a bowl filled with water.\r\nIn the meantime, heat 1-2 tablespoons of oil in a large skillet over medium-high heat. Tilt the skillet so the oil spreads evenly.\r\nOnce the oil is hot, drain the potatoes and add to the skillet. Season with salt, pepper, and Old Bay as needed.\r\nCook for 10 minutes, stirring the potatoes often, until brown. If needed, add a tablespoon more of oil.\r\nChop up the bacon and add to the potatoes. The bacon will start to render and the fat will begin to further cook the potatoes. Toss it up a bit! The bacon will take 5-6 minutes to crisp.\r\nOnce the bacon is cooked, reduce the heat to medium-low, add the minced garlic and toss. Season once more. Add dried or fresh parsley. Control heat as needed.\r\nLet the garlic cook until fragrant, about one minute.\r\nJust before serving, drizzle over the maple syrup and toss. Let that cook another minute, giving the potatoes a caramelized effect.\r\nServe in a warm bowl with a sunny side up egg!",
    area: 'Canadian',
    tags: 'Breakfast,Brunch',
    imageAsset: 'https://www.themealdb.com/images/media/meals/1550441882.jpg',
  ),
  Meal(
    name: 'Banana Pancakes',
    category: 'Dessert',
    description:
    "Before you do anything, freeze your bacon slices that way when you're ready to prep, it'll be so much easier to chop!\r\nWash the potatoes and cut medium dice into square pieces. To prevent any browning, place the already cut potatoes in a bowl filled with water.\r\nIn the meantime, heat 1-2 tablespoons of oil in a large skillet over medium-high heat. Tilt the skillet so the oil spreads evenly.\r\nOnce the oil is hot, drain the potatoes and add to the skillet. Season with salt, pepper, and Old Bay as needed.\r\nCook for 10 minutes, stirring the potatoes often, until brown. If needed, add a tablespoon more of oil.\r\nChop up the bacon and add to the potatoes. The bacon will start to render and the fat will begin to further cook the potatoes. Toss it up a bit! The bacon will take 5-6 minutes to crisp.\r\nOnce the bacon is cooked, reduce the heat to medium-low, add the minced garlic and toss. Season once more. Add dried or fresh parsley. Control heat as needed.\r\nLet the garlic cook until fragrant, about one minute.\r\nJust before serving, drizzle over the maple syrup and toss. Let that cook another minute, giving the potatoes a caramelized effect.\r\nServe in a warm bowl with a sunny side up egg!",
    area: 'American',
    tags: 'Breakfast,Desert,Sweet',
    imageAsset: 'https://www.themealdb.com/images/media/meals/sywswr1511383814.jpg',
  ),
  Meal(
    name: 'Beef Sunday Roast',
    category: 'Beef',
    description:
    'Cook the Broccoli and Carrots in a pan of boiling water until tender.\r\n\r\nRoast the Beef and Potatoes in the oven for 45mins, the potatoes may need to be checked regularly to not overcook.\r\n\r\nTo make the Yorkshire puddings:\r\nHeat oven to 230C/fan 210C/gas 8. Drizzle a little sunflower oil evenly into 2 x 4-hole Yorkshire pudding tins or a 12-hole non-stick muffin tin and place in the oven to heat through\r\nTo make the batter, tip 140g plain flour into a bowl and beat in four eggs until smooth. Gradually add 200ml milk and carry on beating until the mix is completely lump-free. Season with salt and pepper. Pour the batter into a jug, then remove the hot tins from the oven. Carefully and evenly pour the batter into the holes. Place the tins back in the oven and leave undisturbed for 20-25 mins until the puddings have puffed up and browned. Serve immediately.\r\n\r\nPlate up and add the Gravy as desired.',
    area: 'British',
    tags: 'MainMeal',
    imageAsset: 'https://www.themealdb.com/images/media/meals/ssrrrs1503664277.jpg',
  ),
];