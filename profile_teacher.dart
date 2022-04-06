import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ProfileT extends StatefulWidget {
  var uid;
  ProfileT(this.uid);

  @override
  State<ProfileT> createState() => _ProfileTState(uid);
}

class _ProfileTState extends State<ProfileT> {
  @override
  var uid;
  _ProfileTState(this.uid);
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
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff0c4ca3),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "BB",
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 180),
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/z.jpg"),
                        radius: 70,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 80, left: 100),
                          child: IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRodute(builder: (context) => Upload()),
                              // );
                            },
                            icon: Icon(Icons.camera),
                            color: Color(0xff0c4ca3),
                            iconSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${name}",
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
                "${email}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "(Instructor: Android Development)",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 2,
                width: double.infinity,
                color: Colors.black12,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 400,
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
                            "Name:",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 67,
                          ),
                          Text(
                            "${name}",
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
                            "Email:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            "${email}",
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
                            "Phone:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 67,
                          ),
                          Text(
                            "03127654234",
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
                            "Personal ID:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 27,
                          ),
                          Text(
                            "02",
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
                            "Instructor:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 42,
                          ),
                          Text(
                            "Android Development",
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
