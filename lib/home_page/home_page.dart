import 'package:flutter/material.dart';
import 'package:my_flights/styles/app_color.dart';
import 'package:my_flights/styles/app_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.gold,
              child: const Icon(Icons.add),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _bulidHeader(),
            _titleText(),
            _card(
              child: _cardInfo(),
            ),
          ],
        ),
      ),
    );
  }
}

Padding _bulidHeader() {
  return Padding(
    padding: const EdgeInsets.only(top: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Image(
              image: AssetImage(AppIcons.menu),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Padding(
            padding: EdgeInsets.all(2.0),
            child: Image(
              image: AssetImage(AppIcons.img),
            ),
          ),
        ),
      ],
    ),
  );
}

Padding _titleText() {
  return const Padding(
    padding: EdgeInsets.all(20.0),
    child: Text(
      "My Flights",
      style: TextStyle(
        color: AppColors.cardBg,
        fontSize: 35.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

SizedBox _card({required Widget child}) {
  return SizedBox(
    height: 662,
    width: double.infinity,
    child: DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: AppColors.cardBg,
      ),
      child: child,
    ),
  );
}

_cardInfo() {
  return Padding(
    padding: const EdgeInsets.only(top: 70),
    child: Column(
      children: List.generate(
        3,
        (int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MCO",
                          style: TextStyle(
                            color: AppColors.gold,
                            fontWeight: FontWeight.w300,
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          "Orlando",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Data",
                          style: TextStyle(color: Colors.white54),
                        ),
                        Text(
                          "May 11, 8:45 am",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        SizedBox(height: 20),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Image(
                            image: AssetImage(AppIcons.go),
                          ),
                        ),
                        Text(
                          "1h 43m",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 90),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "ATL",
                          style: TextStyle(
                            color: AppColors.gold,
                            fontWeight: FontWeight.w300,
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          "Atlanta",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Flight Number",
                          style: TextStyle(color: Colors.white54),
                        ),
                        Text(
                          "F12234",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ],
                ),
                Divider(color: AppColors.gold),
              ],
            ),
          );
        },
      ),
    ),
  );
}
