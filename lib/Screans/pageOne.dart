import 'package:flutter/material.dart';

class Pageone extends StatefulWidget {
  const Pageone({super.key});

  @override
  State<Pageone> createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
  List MapGifts = [
    {'name': 'Snail', 'image': 'images/icon 02.png'},
    {'name': 'Monster', 'image': 'images/icon 03.png'},
    {'name': 'Octopus', 'image': 'images/icon 05.png'},
    {'name': 'Pig', 'image': 'images/icon 06.png'},
    {'name': 'Frog', 'image': 'images/icon 07.png'},
    {'name': 'Cat', 'image': 'images/icon 10.png'},
    {'name': 'Turtle', 'image': 'images/icon 11.png'},
    {'name': 'Penguin', 'image': 'images/icon 12.png'},
    {'name': 'Koala', 'image': 'images/Icon 13.png'},
    {'name': 'Sheep', 'image': 'images/Icon 14.png'},
    {'name': 'Fox', 'image': 'images/Icon 15.png'},
    {'name': 'Seal', 'image': 'images/Icon 16.png'},
    {'name': 'Chicken', 'image': 'images/img 01.png'},
  ];

  int? itemView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: MapGifts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            bool isSelected = itemView == index;

            return GestureDetector(
              onTap: () {
                setState(() {
                  itemView = index;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [Colors.black12, Colors.black87],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// IMAGE
                    Expanded(
                      flex: 3,
                      child: Image.asset(
                        MapGifts[index]['image'],
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 8),

                    /// NAME
                    SizedBox(
                      height: 20,
                      child: isSelected
                          ? Text(
                              MapGifts[index]['name'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            )
                          : null,
                    ),
                    const SizedBox(height: 6),

                    /// SIGN BUTTON
                    SizedBox(
                      height: 28,
                      child: isSelected
                          ? Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 18,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Sign",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            )
                          : null,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
