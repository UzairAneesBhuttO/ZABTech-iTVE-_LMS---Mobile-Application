import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zabtech_education/data/admin_data.dart';
import 'package:zabtech_education/forget.password.dart';
import 'package:zabtech_education/register.dart';
import 'package:zabtech_education/data/student_data.dart';
import 'package:zabtech_education/dashboard/dashboard_student.dart';
import 'package:zabtech_education/users/user_main.dart';
// import 'package:zabtech_education/users/changepassword_page.dart';
// import 'package:zabtech_education/users/dashboard_page.dart';
// import 'package:zabtech_education/users/profile_page.dart';

class Student extends StatefulWidget {
  const Student({Key? key}) : super(key: key);

  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  var email = "";
  var password = "";
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  userLogin() async {
    print("hello");
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.toString().trim(),
        password: password.toString().trim(),
      );
      print(userCredential);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Color(0xff0c4ca3),
          content: Center(
            child: Text(
              "Login Successfully",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontFamily: "BB",
              ),
            ),
          ),
        ),
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Sdata(userCredential.user!.uid),
        ),
      );
    } catch (e) {
      print(e);
    }
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  var radiovalue = -1;
  void Result(value) {
    setState(() {
      radiovalue = value;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0c4ca3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 110,
                  width: double.infinity,
                  color: Colors.white,
                  child: Image.asset(
                    "assets/zabtech.jpeg",
                    height: 100,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      "Student Login",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: "StageBold",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Email Address",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            suffixIcon: Icon(
                              Icons.email_outlined,
                              size: 30,
                              color: Colors.black54,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            suffixIcon: Icon(
                              Icons.lock_outlined,
                              size: 30,
                              color: Colors.black54,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        child: MaterialButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {}
                            setState(() {
                              email = emailController.text;
                              password = passwordController.text;
                            });
                            userLogin();
                          },
                          color: Color(0xff0c4ca3),
                          textColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "StageBold",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 160),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ForgetPasword(),
                              ),
                            );
                          },
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpStudent(),
                              ),
                            );
                          });
                        },
                        child: Text("SignUp"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 180,
                ),
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
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
      ),
    );
  }
}
