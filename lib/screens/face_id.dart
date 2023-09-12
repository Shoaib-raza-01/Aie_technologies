import 'package:flutter/material.dart';

class FaceIdPage extends StatelessWidget {
  const FaceIdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.5,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/person.png',
              ),)
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 480),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          child: Column(children: [
            const SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 20),
                  child: Center(
                    child: Text(
                      "Look Left",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                  ),
                )),
            const Text("Keep your face in the frame",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('30%',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width/3,
                    decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                      color: Color.fromARGB(182, 106, 11, 183),
                    ),
                  ),
                  Expanded(child: Container(
                    height: 20,
                    decoration:const BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                      color: Color.fromARGB(255, 203, 232, 255)),
                  ))
                ],
              ),
            )
          ]),
        )
      ]),
    );
  }
}
