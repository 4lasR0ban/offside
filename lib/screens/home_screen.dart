import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:offside/components/league_container.dart';
import 'package:offside/components/custom_card.dart';
import 'package:offside/screens/standing_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imageList = [
    'assets/worldcup.jpg',
    'assets/carousel1.png',
    'assets/carousel2.png',
    'assets/carousel3.png',
    'assets/carousel4.png',
  ];

  List<String> newsList = [
    'World Cup 2022 Qatar',
    'Messi The GOAT no debate',
    'World Cup Women 2023',
    'World Cup U-20 2023',
    'Argentina Won World Cup 2022'
  ];

  @override
  Widget build(BuildContext context) {
    Widget title = Container(
      padding: EdgeInsets.all(0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'TOP LEAGUE',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget news = Container(
      padding: EdgeInsets.all(15),
      child: Column(children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150.0,
            autoPlay: true,
            scrollDirection: Axis.vertical,
            enlargeCenterPage: true,
          ),
          items: newsList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '$i',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      left: BorderSide(
                        color: Color.fromARGB(255, 255, 0, 0),
                        width: 15,
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ]),
    );

    Widget logo = Container(
      padding: EdgeInsets.all(15),
      child: Center(
        child: Image.asset(
          'assets/FFSIDE.png',
          height: 100,
        ),
      ),
    );

    Widget carousel = Container(
      padding: EdgeInsets.all(15),
      child: Column(children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 350.0,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: imageList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    margin: EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                    ),
                    elevation: 6.0,
                    shadowColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      child: Stack(
                        children: [
                          Image.network(
                            i,
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ],
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.white),
                );
              },
            );
          }).toList(),
        ),
      ]),
    );

    Widget leagues = Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CustomCard(
            color: Color(0xfffafafa),
            cardChild: LeagueContainer(
              image: 'assets/pl.png',
            ),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StandingScreen(code: 'PL')));
            },
          ),
          CustomCard(
            color: Color(0xfffafafa),
            cardChild: LeagueContainer(image: 'assets/laliga.png'),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StandingScreen(code: 'PD')));
            },
          ),
          CustomCard(
            color: Color(0xfffafafa),
            cardChild: LeagueContainer(image: 'assets/bundesliga.png'),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StandingScreen(code: 'BL1')));
            },
          ),
          CustomCard(
            color: Color(0xfffafafa),
            cardChild: LeagueContainer(image: 'assets/seriea.png'),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StandingScreen(code: 'SA')));
            },
          ),
          CustomCard(
            color: Color(0xfffafafa),
            cardChild: LeagueContainer(image: 'assets/ligue1.png'),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StandingScreen(code: 'FL1')));
            },
          ),
          CustomCard(
            color: Color(0xfffafafa),
            cardChild: LeagueContainer(image: 'assets/nos.png'),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => StandingScreen(code: 'PPL')));
            },
          ),
        ],
      ),
    );

    return Scaffold(
      body: ListView(
        children: [logo, carousel, news, title, leagues],
      ),
    );
  }
}
