import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:offside/components/league_container.dart';
import 'package:offside/components/custom_card.dart';
import 'package:offside/screens/standing_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 0, 255, 242),
              Color.fromARGB(255, 96, 218, 255),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Competition',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  CustomCard(
                    color: Color(0xfffafafa),
                    cardChild: LeagueContainer(image: 'assets/pl.png'),
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  StandingScreen(code: 'PL')));
                    },
                  ),
                  CustomCard(
                    color: Color(0xfffafafa),
                    cardChild: LeagueContainer(image: 'assets/laliga.png'),
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  StandingScreen(code: 'PD')));
                    },
                  ),
                  CustomCard(
                    color: Color(0xfffafafa),
                    cardChild: LeagueContainer(image: 'assets/bundesliga.png'),
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  StandingScreen(code: 'BL1')));
                    },
                  ),
                  CustomCard(
                    color: Color(0xfffafafa),
                    cardChild: LeagueContainer(image: 'assets/seriea.png'),
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  StandingScreen(code: 'SA')));
                    },
                  ),
                  CustomCard(
                    color: Color(0xfffafafa),
                    cardChild: LeagueContainer(image: 'assets/ligue1.png'),
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  StandingScreen(code: 'FL1')));
                    },
                  ),
                  CustomCard(
                    color: Color(0xfffafafa),
                    cardChild: LeagueContainer(image: 'assets/nos.png'),
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  StandingScreen(code: 'PPL')));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
