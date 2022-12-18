import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  // const CustomCard({Key? key}) : super(key: key);

  CustomCard({required this.color, this.cardChild, this.onPress});

  final Color color;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.only(left: 1.0, right: 1.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(0, 29, 30, 51),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
