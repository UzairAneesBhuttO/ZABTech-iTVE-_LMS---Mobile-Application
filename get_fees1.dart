import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:zabtech_education/data/teacher_data.dart';
import 'package:zabtech_education/record/record_fees1.dart';
import 'package:zabtech_education/record/record_fees2.dart';

class Get_Fees1 extends StatefulWidget {
  var uid;
  Get_Fees1(this.uid);

  @override
  State<Get_Fees1> createState() => _Get_Fees1State(uid);
}

class _Get_Fees1State extends State<Get_Fees1> {
  @override
  var uid;
  _Get_Fees1State(this.uid);
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
                              builder: (Context) => Fees_Record2(uid),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Fees Record",
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
                height: 50,
              ),
              Container(
                height: 380,
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
                            width: 20,
                          ),
                          Text(
                            "Addmission Fee:",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            "2000",
                            style: TextStyle(
                              color: Colors.white,
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
                            "ID Card Fee:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          Text(
                            "200",
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
                            "Tuition Fee:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 140,
                          ),
                          Text(
                            "3000",
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
                            "Form Fee:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Text(
                            "500",
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
                            "Total Fee:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          Text(
                            "5700",
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
              SizedBox(
                height: 110,
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff0c4ca3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
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
