import 'package:flutter/material.dart';

class Pagefour extends StatefulWidget {
  const Pagefour({super.key});

  @override
  State<Pagefour> createState() => _PagefourState();
}

class _PagefourState extends State<Pagefour> {
  List<String> types = [
    "Technology",
    "Programming",
    "Business",
    "Education",
    "Sports",
    "Health",
    "Music",
    "Movies",
    "Travel",
    "Food",
    "Gaming",
    "Science",
  ];

  Set<String> selectedTypes = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              Text(
                "We are working in this project now",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 25),

              Wrap(
                spacing: 12,
                runSpacing: 12,

                children: List.generate(types.length, (index) {
                  final item = types[index];
                  final isSelected = selectedTypes.contains(item);

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedTypes.remove(item);
                        } else {
                          selectedTypes.add(item);
                        }
                      });
                    },

                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),

                      height: 48,
                      width: 150,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),

                        color: isSelected ? Colors.blueAccent : Colors.blueGrey,
                      ),

                      alignment: Alignment.center,

                      child: Text(
                        item,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                }),
              ),

              const SizedBox(height: 30),

              Text(
                "Selected Items:",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: selectedTypes.map((v) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),

                        child: Text(
                          "• $v",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
