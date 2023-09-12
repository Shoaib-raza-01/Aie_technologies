import 'package:aie/screens/choice_template.dart';
import 'package:flutter/material.dart';

class ChooseProfile extends StatefulWidget {
  const ChooseProfile({super.key});

  @override
  State<ChooseProfile> createState() => _FillNameState();
}

class _FillNameState extends State<ChooseProfile> {
  String choice = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              padding: EdgeInsets.only(top: 25, left: 25),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        choice = "student";
                      },
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color.fromARGB(255, 216, 174, 244)),
                        child: const Center(
                            child: Text("Student",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        choice = "parent";
                      },
                      child: Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color.fromARGB(255, 216, 174, 244)),
                        child: const Center(
                            child: Text("Parent",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black))),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    choice = "teacher";
                  },
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width / 2.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color.fromARGB(255, 216, 174, 244)),
                    child: const Center(
                        child: Text("Teacher",
                            style:
                                TextStyle(fontSize: 20, color: Colors.black))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
              child: InkWell(
                onTap: () {
                  if (choice == "teacher") {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ChoicePage(
                            title: "Teacher",
                            about:
                                "Inspire and educate the future generation. Opt for the teacher profile to share knowledge and mentor students",
                            image: 'assets/teacher.png')));
                  } else if (choice == "student") {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ChoicePage(
                            title: 'Student',
                            about:
                                "Eager to learn and grow?\nJoin as a student to access knowledge, engage with peers and thrive",
                            image: 'assets/student.png')));
                  } else if (choice == 'parent') {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ChoicePage(
                            title: 'Parent',
                            about:
                                "Ready to empower your child's educational journey?\nChoose the parent profile to support and monitor progress",
                            image: 'assets/parents.png')));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                          "It seems like you haven't selected any of the profile.\n\nPlease choose any profile to proceed further. "),
                      duration: Duration(seconds: 3),
                    ));
                  }
                },
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
            )
          ],
        ),
      ),
    );
  }
}
