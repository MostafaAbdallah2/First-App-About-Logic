import 'package:flutter/material.dart';
import 'package:logic_app/Screans/PageFour.dart';
import 'package:logic_app/Screans/pageOne.dart';
import 'package:logic_app/Screans/pageThree.dart';
import 'package:logic_app/Screans/pageTwo.dart';

//data
class Root extends StatefulWidget {
  const Root({super.key});
  //Data

  @override
  State<Root> createState() => _RootState();
}

//Logic
class _RootState extends State<Root> {
  PageController controller = PageController();

  List<Widget> screans = [Pageone(), PageTwo(), PageThree(), Pagefour()];

  int beginpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: screans,
        onPageChanged: (value) {
          beginpage = value;
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Row(
          children: [
            //Arrow
            GestureDetector(
              onTap: () {
                controller.jumpToPage(beginpage - 1);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(children: [Icon(Icons.arrow_back_outlined)]),
              ),
            ),
            SizedBox(width: 22),

            //Next Bage
            GestureDetector(
              onTap: () {
                controller.jumpToPage(beginpage + 1);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Text(
                      "Next page",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_outlined),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
