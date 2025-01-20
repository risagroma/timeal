import 'package:flutter/material.dart';
import 'package:timeal/presentation/page/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 240),
            child: Center(
              child: Image.asset('assets/images/logo_timeage.png',
                height: 100, width: 100, ),
            ),
          ),
          SizedBox.fromSize(size: const Size(double.infinity, 50),),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(46, 124, 26, 100),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35, vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Timeal",
                      style: TextStyle(fontFamily: 'Kanit', fontSize: 24),
                    ),
                    Text(
                      "Don't waste your time, Let’s show the meal!",
                      style: TextStyle(fontFamily: 'Kanit', fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
