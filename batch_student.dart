import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:zabtech_education/batches/batch_1.dart';
import 'package:zabtech_education/batches/batch_2.dart';
import 'package:zabtech_education/data/student_data.dart';
import 'package:zabtech_education/data/teacher_data.dart';

class Batch_Student extends StatefulWidget {
  var uid;
  Batch_Student(this.uid);

  @override
  State<Batch_Student> createState() => _Batch_StudentState(uid);
}

class _Batch_StudentState extends State<Batch_Student> {
  @override
  @override
  var uid;
  _Batch_StudentState(this.uid);
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
                              builder: (Context) => Sdata(uid),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Batches",
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
                height: 15,
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
                height: 50,
              ),
              ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (contex) => Batch_2(uid),
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
                      "Batch-I",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  MaterialButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (contex) => Batch_1(),
                      //   ),
                      // );
                    },
                    height: 60,
                    minWidth: 120,
                    color: Color(0xff0c4ca3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Batch-II",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  MaterialButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (contex) => Record(),
                      //   ),
                      // );
                    },
                    height: 60,
                    minWidth: 120,
                    color: Color(0xff0c4ca3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Batch-III",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
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
