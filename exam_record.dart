import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:zabtech_education/batches/batch_teacher.dart';
import 'package:zabtech_education/data/admin_data.dart';
import 'package:zabtech_education/data/teacher_data.dart';
import 'package:zabtech_education/record/marks_record.dart';
import 'package:zabtech_education/record/record_exam1.dart';

class Exam_Record extends StatefulWidget {
  var uid;
  Exam_Record(this.uid);

  @override
  State<Exam_Record> createState() => _Exam_RecordState(uid);
}

class _Exam_RecordState extends State<Exam_Record> {
  @override
  var Name = "";
  var FName = "";
  var RegNo = "";

  final nameController = TextEditingController();
  final fnameController = TextEditingController();
  final regNoController = TextEditingController();

  // void dispose() {
  //   nameController.dispose();
  //   fnameController.dispose();
  //   regNoController.dispose();
  //   super.dispose();
  // }

  // submitData() async {
  //   Name = nameController.text;
  //   FName = fnameController.text;
  //   RegNo = regNoController.text;
  //   print(Name);
  //   print(FName);

  //   print(RegNo);

  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   DatabaseReference exam =
  //       FirebaseDatabase.instance.reference().child('Exam_Record');

  //   var obj = {
  //     "Name": Name,
  //     "F\Name": FName,
  //     "Reg.No": RegNo,
  //   };
  //   print(obj);

  //   DatabaseReference chkassign =
  //       await FirebaseDatabase.instance.reference().child('Exam_Record');

  //   var res = chkassign.child(RegNo.toString()).once().then(
  //     ((DataSnapshot snapshoot) {
  //       print(snapshoot.value);
  //       if (snapshoot.value == null) {
  //         exam.child(RegNo).set(obj);
  //       } else {
  //         print('Already Add');
  //       }
  //     }),
  //   );

  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => Record1(),
  //     ),
  //   );

  //   print("User Register");
  // }

  GlobalKey<FormState> form = GlobalKey<FormState>();

  var uid;
  _Exam_RecordState(this.uid);
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
          child: Container(
            height: 900,
            child: Form(
              key: form,
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
                    height: 120,
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
                                  builder: (Context) => Tdata(uid),
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
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 100),
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color(0xff0c4ca3),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color(0xff0c4ca3),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: TextFormField(
                            controller: nameController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "\t\tName",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color(0xff0c4ca3),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: TextFormField(
                            controller: fnameController,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: "\t\tFather Name",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Color(0xff0c4ca3),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: TextFormField(
                            controller: regNoController,
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "\t\tRegistration Number",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        Name = nameController.text;
                        FName = fnameController.text;
                        RegNo = regNoController.text;
                      });
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Record1(uid),
                          ),
                        );
                      });
                    },
                    height: 60,
                    minWidth: 200,
                    color: Color(0xff0c4ca3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "DD",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
