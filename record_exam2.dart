import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:zabtech_education/data/student_data.dart';
import 'package:zabtech_education/data/teacher_data.dart';

class Record2 extends StatefulWidget {
  var uid;
  Record2(this.uid);

  @override
  State<Record2> createState() => _Record2State(uid);
}

class _Record2State extends State<Record2> {
  @override
  var uid;
  _Record2State(this.uid);
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
                    bottomRight: Radius.circular(40),
                  ),
                ),
                height: 90,
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
                              builder: (Context) => Sdata(uid),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Exam Record",
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
                height: 10,
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.white,
                child: Image.asset(
                  "assets/zabtech.jpeg",
                  height: 100,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Institute of Technical & VocationalEducation - iTVE\n                                 Hyderabad",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Hobo",
                  color: Color(0xff0c4ca3),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 550,
                width: 400,
                decoration: BoxDecoration(
                  color: Color(0xff0c4ca3),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Assessment Type:",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "BB",
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Frequencies:",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "BB",
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Max.Marks:",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "BB",
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Total Marks",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "BB",
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Assignment:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                              color: Colors.white,
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
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Presentation:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 65,
                          ),
                          Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "5",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                              color: Colors.white,
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
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Class Test:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 82,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 75,
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                              color: Colors.white,
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
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Attendance:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 73,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 75,
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                              color: Colors.white,
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
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Mid Term Test:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 55,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "20",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 75,
                          ),
                          Text(
                            "20",
                            style: TextStyle(
                              color: Colors.white,
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
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Final Test:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "40",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 75,
                          ),
                          Text(
                            "40",
                            style: TextStyle(
                              color: Colors.white,
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
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Final Project:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text(
                            "100",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 66,
                          ),
                          Text(
                            "100",
                            style: TextStyle(
                              color: Colors.white,
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
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
