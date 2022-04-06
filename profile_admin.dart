import 'package:flutter/material.dart';
import 'package:zabtech_education/data/admin_data.dart';

class Profile_Admin extends StatefulWidget {
  const Profile_Admin({Key? key}) : super(key: key);

  @override
  State<Profile_Admin> createState() => _Profile_AdminState();
}

class _Profile_AdminState extends State<Profile_Admin> {
  @override
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
                              //   MaterialPageRoute(builder: (context) => Upload()),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: IconButton(
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
                  ),
                ],
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
                "abdulhameedsheikh@gmail.com",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "(Principle: SZABIST ZABTech)",
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
                            width: 80,
                          ),
                          Text(
                            "Abdul Hameed",
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
                            width: 60,
                          ),
                          Text(
                            "abdulhameedsheikh@gmail.com",
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
                            width: 80,
                          ),
                          Text(
                            "+92 31260257263",
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
                            width: 40,
                          ),
                          Text(
                            "********",
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
                            "Administor:",
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontFamily: "BB",
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 57,
                          ),
                          Text(
                            "ZABTech Hyderbad",
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
