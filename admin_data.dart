import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zabtech_education/Reg_student.dart';
import 'package:zabtech_education/notification/admin_notification.dart';
import 'package:zabtech_education/profile/profile_admin.dart';
import 'package:zabtech_education/record/Assgn_record.dart';
import 'package:zabtech_education/record/exam_record.dart';
import 'package:zabtech_education/start.dart';
import 'package:zabtech_education/users/changepassword_page.dart';

class Adata extends StatefulWidget {
  const Adata({Key? key}) : super(key: key);

  @override
  _AdataState createState() => _AdataState();
}

class _AdataState extends State<Adata> {
  @override
  var radiovalue = -1;

  void Result(value) {
    setState(() {
      radiovalue = value;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0c4ca3),
        toolbarHeight: 60,
        title: Center(
          child: Container(
            padding: EdgeInsets.only(right: 50),
            child: Text(
              "Admin Panel",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "BB",
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 40, right: 100),
          color: Color(0xff0c4ca3),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage("assets/z.jpg"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Abdul Hameed",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      // fontFamily: "Hobo",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      "Abdulhameddsheikh@gmail.com",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Hobo",
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: Colors.white,
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.green,
                      child: Center(
                        child: Icon(
                          Icons.check,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Available",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Icon(
                      Icons.person_add_alt_1_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile_Admin(),
                        ),
                      );
                    },
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Icon(
                      Icons.notifications_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Admin_Notification(),
                        ),
                      );
                    },
                    child: Text(
                      "Notifications",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Icon(
                      Icons.settings_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangePassword()));
                    },
                    child: Text(
                      "Setting",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.add,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    child: Text(
                      "Add account",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 25),
                    child: Icon(
                      Icons.login_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () async => {
                      await FirebaseAuth.instance.signOut(),
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Start(),
                          ),
                          (route) => false),
                    },
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/z.jpg"),
                  radius: 80,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Abdul Hameed Sheikh",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "(Principal ZABTech)",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black,
              ),
              SizedBox(
                height: 60,
              ),
              Stack(
                children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff0c4ca3),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      height: 350,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (contex) => Record(),
                                ),
                              );
                            },
                            height: 60,
                            minWidth: 120,
                            color: Color(0xff0c4ca3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Assign Course",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (contex) => Register_Student(),
                                ),
                              );
                            },
                            height: 60,
                            minWidth: 120,
                            color: Color(0xff0c4ca3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Student Registor",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          // MaterialButton(
                          //   onPressed: () {
                          //     Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //         builder: (contex) => Exam_Record(),
                          //       ),
                          //     );
                          //   },
                          //   height: 60,
                          //   minWidth: 120,
                          //   color: Color(0xff0c4ca3),
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(10),
                          //   ),
                          //   child: Text(
                          //     "Exam Record",
                          //     style: TextStyle(
                          //       fontSize: 30,
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // MaterialButton(
                          //   onPressed: () {},
                          //   height: 60,
                          //   minWidth: 120,
                          //   color: Color(0xff0c4ca3),
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(10),
                          //   ),
                          //   child: Text(
                          //     "Fees Record",
                          //     style: TextStyle(
                          //       fontSize: 30,
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // MaterialButton(
                          //   onPressed: () {},
                          //   height: 60,
                          //   minWidth: 120,
                          //   color: Color(0xff0c4ca3),
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(10),
                          //   ),
                          //   child: Text(
                          //     "Attendance",
                          //     style: TextStyle(
                          //       fontSize: 30,
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
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
