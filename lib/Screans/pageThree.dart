import 'package:flutter/material.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 130,
                    backgroundImage: AssetImage("images/icon 05.png"),
                  ),
                  Positioned(
                    bottom: -20,
                    left: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          check = !check;
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(
                          check ? Icons.favorite : Icons.favorite_border,
                          color: check ? Colors.red : Colors.white,
                        ),
                      ),
                    ),
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
