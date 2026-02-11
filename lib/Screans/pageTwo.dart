import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  List<String> photos = [
    "images/icon 02.png",
    "images/icon 03.png",
    "images/icon 05.png",
    "images/icon 06.png",
    "images/icon 07.png",
  ];

  int Perss = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,

      body: Column(
        children: [
          Image.asset(photos[Perss]),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(photos.length, (index) {
                  return InkWell(
                    splashColor: Colors.white.withAlpha(0),
                    onTap: () {
                      setState(() {
                        Perss = index;
                      });
                    },

                    child: Container(
                      height: 150,
                      // height: Perss == index ? 170 : 150,
                      width: 100,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: BoxBorder.all(
                          color: Perss == index
                              ? Colors.blue
                              : const Color.fromARGB(147, 0, 0, 0),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),

                      child: Image.asset(
                        photos[index],
                        scale: Perss == index ? 1 : 7,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
