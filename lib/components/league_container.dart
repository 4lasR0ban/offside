import 'package:flutter/material.dart';

class LeagueContainer extends StatelessWidget {
  // const CustomCard({Key? key}) : super(key: key);

  LeagueContainer({required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(image),
    );
  }
}
