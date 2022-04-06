import 'package:flutter/material.dart';
import 'package:zabtech_education/data/student_data.dart';

class Student_Notification extends StatefulWidget {
  const Student_Notification({Key? key}) : super(key: key);

  @override
  State<Student_Notification> createState() => _Student_NotificationState();
}

class _Student_NotificationState extends State<Student_Notification> {
  @override
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Notification Alert'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.highlight_off_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Student_Notification()));
                      },
                      child: Text(
                        "Remove this notification",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.highlight_off_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Student_Notification()));
                      },
                      child: Text(
                        "Turn off notifications about this ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.report_problem_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Student_Notification()));
                      },
                      child: Text(
                        "Report issue to Notification Team",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 900,
            width: double.infinity,
            color: Color(0xff0c4ca3),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      IconButton(
                        color: Colors.white,
                        iconSize: 30,
                        onPressed: () {
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(
                          //     // builder: (Context) => Sdata(),
                          //   ),
                          // );
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      SizedBox(
                        width: 300,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/z.jpg"),
                        radius: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                        ),
                        Text(
                          "Notifications",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.notification_important_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 8,
                        child: Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: "BB",
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 22),
                  height: 738,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("assets/a.jpg"),
                            ),
                            title: Text(
                              "Sir Zubair ZABTech",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              "Sir kal wala code send kardein..",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: _showMyDialog,
                              icon: Icon(Icons.more_horiz),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("assets/d.jpg"),
                            ),
                            title: Text(
                              "Uzair Anees",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              "Jaani cha haal aa.",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: _showMyDialog,
                              icon: Icon(Icons.more_horiz),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("assets/e.jpg"),
                            ),
                            title: Text(
                              "Azmat Bhai",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              "Bhai kal centre pe aaoge",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: _showMyDialog,
                              icon: Icon(Icons.more_horiz),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("assets/f.jpg"),
                            ),
                            title: Text(
                              "Labeed Bhai",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              "Bhai test kesa gaya",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: _showMyDialog,
                              icon: Icon(Icons.more_horiz),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("assets/g.jpg"),
                            ),
                            title: Text(
                              "Umais Hussain",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              "Bhai sun chai kab pilae gaa",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: _showMyDialog,
                              icon: Icon(Icons.more_horiz),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("assets/h.jpg"),
                            ),
                            title: Text(
                              "Mirza Bhai",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              "Yaar aaj Tum Naha ke bhe nahe aaye",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: _showMyDialog,
                              icon: Icon(Icons.more_horiz),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("assets/i.jpg"),
                            ),
                            title: Text(
                              "Shahmeer Bhai",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              "Bhai kal centre pe aaoge...",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: _showMyDialog,
                              icon: Icon(Icons.more_horiz),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("assets/q.jpg"),
                            ),
                            title: Text(
                              "Sarwan Halepoto",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              "Jaani Cha haal aa Kathy ghum hiiii..",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: _showMyDialog,
                              icon: Icon(Icons.more_horiz),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("assets/k.jpg"),
                            ),
                            title: Text(
                              "Kashif Mahar",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              "Kashif jaani bike free aahye..",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: _showMyDialog,
                              icon: Icon(Icons.more_horiz),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("assets/o.jpg"),
                            ),
                            title: Text(
                              "Bhaa Waqar",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              "Vijay Centre Ty Wendy cha tu yaan na..",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: _showMyDialog,
                              icon: Icon(Icons.more_horiz),
                            ),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage("assets/o.jpg"),
                            ),
                            title: Text(
                              "Bhaa Waqar",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            subtitle: Text(
                              "Vijay Centre Ty Wendy cha tu yaan na..",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black38,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: _showMyDialog,
                              icon: Icon(Icons.more_horiz),
                            ),
                          ),
                        ],
                      ),
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
