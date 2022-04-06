import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:zabtech_education/batches/batch_student.dart';
import 'package:zabtech_education/batches/batch_teacher.dart';

class Batch_2 extends StatefulWidget {
  var uid;
  Batch_2(this.uid);

  @override
  State<Batch_2> createState() => _Batch_2State(uid);
}

class _Batch_2State extends State<Batch_2> {
  @override
  var uid;
  _Batch_2State(this.uid);
  @override
  var name;

  var email;
  var contact;
  var stdid;
  var trade;

  void initState() {
    super.initState();
    print("print ${uid}");
    DatabaseReference teacher =
        FirebaseDatabase.instance.reference().child('Teacher_Register');

    teacher.child(uid).once().then((DataSnapshot Snaphsoot) {
      print(Snaphsoot.value["Name"]);
      name = Snaphsoot.value["Name"];
      email = Snaphsoot.value["Email"];
      contact = Snaphsoot.value["Contact"];
      stdid = Snaphsoot.value["Student_Id"];
      trade = Snaphsoot.value["Course"];

      setState(() {
        name = name;
        email = email;
        contact = contact;
        stdid = stdid;
        trade = trade;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff0c4ca3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Row(
                    children: [
                      IconButton(
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (Context) => Batch_Student(uid),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Batches OutLine",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "BB",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 120,
                width: double.infinity,
                child: Image.asset(
                  "assets/zabtech.jpeg",
                  height: 100,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Color(0xff0c4ca3),
                    child: const Center(
                      child: Text(
                        'Course Outline',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: "Hobo",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Class Time:",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          "09:00",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xff0c4ca3),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Course:",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 102,
                        ),
                        Text(
                          "Android Development",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xff0c4ca3),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Batch:",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 112,
                        ),
                        Text(
                          "Batch-1",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xff0c4ca3),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    color: Color(0xff0c4ca3),
                    child: const Center(
                      child: Text(
                        'Lecture Progress',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: "Hobo",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Lecture.No:",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Text(
                          "02",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xff0c4ca3),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Start Date:",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 87,
                        ),
                        Text(
                          "02/04/2022",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xff0c4ca3),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "End Date",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 99,
                        ),
                        Text(
                          "05/04/2022",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xff0c4ca3),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    color: Color(0xff0c4ca3),
                    child: const Center(
                      child: Text(
                        'Attendance',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: "Hobo",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Present:",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 83,
                        ),
                        Text(
                          "03",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xff0c4ca3),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Leave:",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 98,
                        ),
                        Text(
                          "01",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xff0c4ca3),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Absent:",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: 88,
                        ),
                        Text(
                          "06",
                          style: TextStyle(
                            color: Colors.black,
                            // fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: Color(0xff0c4ca3),
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
