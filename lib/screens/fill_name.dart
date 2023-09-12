import 'package:aie/screens/fill_region.dart';
import 'package:flutter/material.dart';

class FillName extends StatefulWidget {
  const FillName({super.key});

  @override
  State<FillName> createState() => _FillNameState();
}

class _FillNameState extends State<FillName> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: const AssetImage('assets/sitting.png'),
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 25),
              child: Text("How we should call you?",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 141, 0, 166)
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
                color: Color.fromARGB(255, 234, 252, 255),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10,left: 20,right: 10),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your name",
                      fillColor: Color.fromARGB(255, 230, 245, 255)
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90,left: 15,right: 15),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                    FillRegion(name: nameController.text)
                  ));
                },
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromARGB(255, 145, 28, 199)
                  ),
                  child: Center(
                    child: Text("Next",
                      style: TextStyle(
                        fontSize: 22,
                        color:Colors.white
                      )
                    )
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}