import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeal/data/model/meal.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String dayOfWeek = DateFormat('EEEE').format(now);
    String formattedDate = DateFormat('dd-MM-yyyy').format(now);

    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 158,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(64, 160, 40, 1),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Hi, Have a nice day",
                  style: TextStyle(
                    fontFamily: "Kanit",
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  "Timealer",
                  style: TextStyle(
                    fontFamily: "Kanit",
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 35),
                  width: 352,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(64, 160, 40, 1),
                      width: 2.0,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Today's $dayOfWeek",
                              style: const TextStyle(
                                fontFamily: "Kanit",
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              formattedDate,
                              style: const TextStyle(
                                fontFamily: "Kanit",
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.cloud_queue_sharp, // ini untuk icon sesuai suhunya
                              size: 37,
                            ),
                            Text(
                              "16 C", // Ini untuk suhu
                              style: TextStyle(
                                fontFamily: "Kanit",
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Show Meals",
                  style: TextStyle(
                    fontFamily: "Kanit",
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    itemBuilder: (context, index) {
                      final Meal meal = mealList[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(meal: meal),
                              ),
                            );
                          },
                          child: _buildCard(meal),
                        ),
                      );
                    },
                    itemCount: mealList.length,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildCard(Meal meal) {
  return Card(
    color: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
            child: Image.network(
              meal.imageAsset,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  meal.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  meal.area,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  meal.category,
                  style: const TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
