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
        color: Colors.amber,
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(15, 145, 234, 250),
            Color.fromARGB(15, 2, 255, 213),
          ],
          begin: Alignment.centerRight,
          end: new Alignment(-1.0, -1.0),
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image.asset(
        image,
        height: 200,
        width: 200,
      ),
    );
  }
}
