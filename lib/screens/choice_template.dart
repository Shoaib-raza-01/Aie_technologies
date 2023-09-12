import 'package:flutter/material.dart';

class ChoicePage extends StatelessWidget {
  final String title;
  final String about;
  final String image;
  const ChoicePage({super.key, required this.title, required this.about, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           SizedBox(
              height: 470,
              width: MediaQuery.of(context).size.width,
              child: const Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                      bottom: 100,
                      child: Image(image: AssetImage('assets/circle.png'))),
                  Positioned(
                      bottom: 170,
                      child: Image(image: AssetImage('assets/design.png'))),
                  Positioned(
                      top: 212,
                      left: 90,
                      child: Image(image: AssetImage('assets/thinking.png'))),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25,),
              child: Text(
                "How you gonna use this app?",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 141, 0, 166)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Stack(
                children: [
                  Image(image: AssetImage(image),) ,
                  Padding(
                    padding: const EdgeInsets.only(left: 140,top: 8),
                    child: SizedBox(
                      width: 177,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title,style: TextStyle(
                            fontSize: 18,
                            color: Colors.white
                          ),),
                          SizedBox(
                            height: 5,
                          ),
                          Text(about,style: TextStyle(
                            fontSize: 13,
                            color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  )
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
              child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromARGB(255, 158, 11, 232)),
                    child: const Center(
                        child: Text("Submit",
                            style: TextStyle(fontSize: 20, color: Colors.white))),
                  ),
            ),
        ],
      ),
    );
  }
}
