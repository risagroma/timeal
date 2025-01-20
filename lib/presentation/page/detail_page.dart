import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../data/model/meal.dart';

class DetailPage extends StatelessWidget {
  final Meal meal;

  const DetailPage({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(meal: meal);
        } else {
          return DetailMobilePage(meal: meal);
        }
      },
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final Meal meal;

  const DetailWebPage({super.key, required this.meal});

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SafeArea(
                    child: Row(
                      children: [
                        IconButton(
                            hoverColor: Colors.black12,
                            icon: Icon(Icons.arrow_back_rounded),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Text(
                          'Wisata Bandung',
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontSize: 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(widget.meal.imageAsset),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Expanded(
                          child: Card(
                            child: Container(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    widget.meal.name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 30.0),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_today),
                                          SizedBox(width: 8.0),
                                          Text(widget.meal.category,
                                              style:
                                              TextStyle(fontFamily: 'Kanit')),
                                        ],
                                      ),
                                      FavoriteButton(),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.access_time),
                                      SizedBox(width: 8.0),
                                      Text(widget.meal.area,
                                          style: TextStyle(fontFamily: 'Kanit')),
                                    ],
                                  ),
                                  Container(
                                    padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                    child: Text(
                                      widget.meal.description,
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'Oxygen',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final Meal meal;

  const DetailMobilePage({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: [
                Image.network(meal.imageAsset),
                SafeArea(
                  child: IconButton(
                      hoverColor: Colors.black12,
                      icon: Icon(Icons.arrow_back_rounded),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                meal.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.location_city_rounded),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        meal.area,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.category_rounded),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(meal.category),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.tag_rounded),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(meal.tags),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                meal.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Kanit',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
