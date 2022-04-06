import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:zabtech_education/data/admin_data.dart';
import 'package:zabtech_education/data/teacher_data.dart';

class Marks_Record extends StatefulWidget {
  const Marks_Record({Key? key}) : super(key: key);

  @override
  State<Marks_Record> createState() => _Marks_RecordState();
}

class _Marks_RecordState extends State<Marks_Record> {
  @override
  var DD;
  var AA;
  var BB;
  var CC;
  var EE;
  var course = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];

  var teacher = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18",
    "19",
    "20"
  ];

  var batch = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"];
  // var SD = ["Batch-I", "Batch-II", "Batch-III", "Batch-IV"];

  var userDate;
  var dateUser;
  var _chosenValue;

  TextEditingController data = TextEditingController();
  TextEditingController hello = TextEditingController();

  void _datepicker() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1998),
      lastDate: DateTime(2100),
    );

    setState(() {
      userDate = data;
      data.text = date.toString().substring(0, 11);
    });
    print(userDate);
  }

  void _date() async {
    final DateTime? dd = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1998),
      lastDate: DateTime(2100),
    );

    setState(() {
      dateUser = hello;
      hello.text = dd.toString().substring(0, 11);
    });
    print(userDate);
  }

  var Course = "";
  var Teacher = "";
  var Batch = "";
  var sd = "";
  var ed = "";
  final courseController = TextEditingController();
  final teacherController = TextEditingController();
  final batchController = TextEditingController();
  final SDController = TextEditingController();
  final EDController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  void dispose() {
    courseController.dispose();
    teacherController.dispose();
    batchController.dispose();
    SDController.dispose();
    EDController.dispose();
    super.dispose();
  }

  submitData() async {
    print(DD);
    print(AA);
    print(data.text);
    print(hello.text);
    print(BB);
    FirebaseAuth auth = FirebaseAuth.instance;
    DatabaseReference assign =
        FirebaseDatabase.instance.reference().child('Assign_Course');

    var userCredential;
    var obj = {
      "Course": DD.toString(),
      "Teacher": AA.toString(),
      "Batch": BB.toString(),
      "Start Date": data.text.toString(),
      "End Date": hello.text.toString(),
    };
    print(obj);

    DatabaseReference chkassign =
        await FirebaseDatabase.instance.reference().child('Assign_Course');

    var res =
        chkassign.child(DD.toString()).once().then(((DataSnapshot snapshoot) {
      print(snapshoot.value);
      if (snapshoot.value == null) {
        assign.child(DD).set(obj);
      } else {
        print('Already Add');
      }
    }));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Tdata(userDate),
      ),
    );

    print("User Register");
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
                              builder: (Context) => Adata(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      SizedBox(
                        width: 20,
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
                height: 20,
              ),
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff0c4ca3),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton(
                  isExpanded: true,
                  value: DD,
                  items: course.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(
                        "\t\t$value",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "BB",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                  hint: Text(
                    "\t\t\tAssignment",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Hobo",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      DD = value.toString();
                    });
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff0c4ca3),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton(
                  isExpanded: true,
                  value: AA,
                  items: teacher.map((value1) {
                    return DropdownMenuItem(
                      value: value1,
                      child: Text(
                        "\t\t$value1",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: "BB",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                  hint: Text(
                    "\t\t\tClass Test",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Hobo",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      AA = value.toString();
                    });
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff0c4ca3),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButton(
                  isExpanded: true,
                  value: BB,
                  items: batch.map((value2) {
                    return DropdownMenuItem(
                      value: value2,
                      child: Text(
                        "\t\t$value2",
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: "BB",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                  hint: Text(
                    "\t\t\Presentation",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Hobo",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      BB = value.toString();
                    });
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xff0c4ca3),
                        width: 1,
                      ),
                    ),
                    child: TextFormField(
                      controller: data,
                      readOnly: true,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Hobo",
                      ),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "\t\t\Start Date",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: "Hobo",
                          fontWeight: FontWeight.bold,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _datepicker();
                          },
                          icon: Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                          ),
                        ),
                        // border: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(10),
                        // ),
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
                    margin: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xff0c4ca3),
                        width: 1,
                      ),
                    ),
                    child: TextFormField(
                      controller: hello,
                      readOnly: true,
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Hobo",
                      ),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "\t\t\End Date",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: "Hobo",
                          fontWeight: FontWeight.bold,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            _date();
                          },
                          icon: Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    Course = courseController.text;
                    Teacher = teacherController.text;
                    Batch = batchController.text;
                    sd = SDController.text;
                    ed = EDController.text;
                  });
                  submitData();
                },
                height: 60,
                minWidth: 150,
                color: Color(0xff0c4ca3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff0c4ca3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                height: 120,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
