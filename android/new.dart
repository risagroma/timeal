Expanded
(
child: FutureBuilder<MealResponse>(
future: fetchCanadianMeals(), // Mengambil data dari API
builder: (context, snapshot) {
if (snapshot.hasData) {
final meals = snapshot.data!.meals;
return ListView.builder(
padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
itemCount: meals.length,
itemBuilder: (context, index) {
final meal = meals[index];
return Padding(
padding: const EdgeInsets.all(8.0),
child: GestureDetector(
onTap: () {
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => DetailPage(mealId: meal.idMeal),
),
);
},
child: _buildCard(meal), // Menggunakan fungsi _buildCard
),
);
},
);
} else if (snapshot.hasError) {
return Center(child: Text('Error: ${snapshot.error}'));
} else {
return Center(child: CircularProgressIndicator());
}
},
)
,
)
,