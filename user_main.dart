// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:zabtech_education/login/Login_Page.dart';
// import 'package:zabtech_education/users/changepassword_page.dart';
// import 'package:zabtech_education/users/dashboard_page.dart';
// import 'package:zabtech_education/users/profile_page.dart';

// class UserMain extends StatefulWidget {
//   const UserMain({Key? key}) : super(key: key);

//   @override
//   _UserMainState createState() => _UserMainState();
// }

// class _UserMainState extends State<UserMain> {
//   @override
//   int selectedIndex = 0;
//   static List<Widget> widgitOption = <Widget>[
//     DashBoard(),
//     ProfilePage(),
//     ChangePassword(),
//   ];
//   void onItemTapped(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black12,
//         toolbarHeight: 60,
//         title: Center(
//             child: Text(
//           "Student Zone",
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 25,
//           ),
//         )),
//       ),
//       drawer: Drawer(
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.only(top: 60),
//               child: ListTile(
//                 leading: CircleAvatar(
//                   radius: 40,
//                   backgroundColor: Colors.blue,
//                   backgroundImage: AssetImage("assets/z.jpg"),
//                 ),
//                 title: Text(
//                   "Vijay Kumar",
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.black,
//                   ),
//                 ),
//                 subtitle: Text(
//                   "SZABIST ZABTech - iTVE",
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 60,
//             ),
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 30),
//                   child: CircleAvatar(
//                     radius: 10,
//                     backgroundColor: Colors.green,
//                     child: Center(
//                       child: Icon(
//                         Icons.check,
//                         size: 20,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Container(
//                   child: Text(
//                     "Available",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black54,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 25),
//                   child: Icon(
//                     Icons.published_with_changes,
//                     size: 30,
//                     color: Colors.black54,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Container(
//                   child: Text(
//                     "Set status messgae",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black54,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 25),
//                   child: Icon(
//                     Icons.notifications_outlined,
//                     size: 30,
//                     color: Colors.black54,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Container(
//                   child: Text(
//                     "Notifications",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black54,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 25),
//                   child: Icon(
//                     Icons.settings_outlined,
//                     size: 30,
//                     color: Colors.black54,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Container(
//                   child: Text(
//                     "Setting",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black54,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 25),
//                   child: Icon(
//                     Icons.lightbulb_outline,
//                     size: 30,
//                     color: Colors.black54,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 15,
//                 ),
//                 Container(
//                   child: Text(
//                     "What's new",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black54,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               padding: EdgeInsets.only(right: 120),
//               child: Text(
//                 "Accounts and orgs",
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.black54,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Container(
//               child: ListTile(
//                 leading: Icon(
//                   Icons.work_outline,
//                   size: 30,
//                 ),
//                 title: Text(
//                   "SZABIST ZABTech - iTVE",
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.black,
//                   ),
//                 ),
//                 subtitle: Text(
//                   "vijaykumaroad39@gmail.com",
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               child: ListTile(
//                 leading: Icon(
//                   Icons.work_outline,
//                   size: 30,
//                 ),
//                 title: Text(
//                   "Own",
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.black,
//                   ),
//                 ),
//                 subtitle: Text(
//                   "vijaykumaroad39@gmail.com",
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 15),
//                   child: Icon(
//                     Icons.add,
//                     size: 35,
//                     color: Colors.black,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 25,
//                 ),
//                 Container(
//                   child: Text(
//                     "Add account",
//                     style: TextStyle(
//                       fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             ElevatedButton(
//               onPressed: () async => {
//                 await FirebaseAuth.instance.signOut(),
//                 Navigator.pushAndRemoveUntil(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => Login(),
//                     ),
//                     (route) => false),
//               },
//               child: Text("Logout"),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.blueGrey,
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: widgitOption.elementAt(selectedIndex),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Dasboard",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: "Change Password",
//           ),
//         ],
//         currentIndex: selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: onItemTapped,
//       ),
//     );
//   }
// }
