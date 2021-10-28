

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:first_proj/database_managers/all_categories_manager.dart';
import 'package:first_proj/database_managers/profile_manager.dart';
import 'package:first_proj/screens/dashboard/profile.dart';
import 'package:first_proj/services/authentication_service.dart';
import 'package:first_proj/utils/appcolors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AuthenticationServices _auth = AuthenticationServices();
 List userProfilesList = [];

  String userID = "";

  @override
  void initState() {
    super.initState();
   // fetchUserInfo();
    fetchDatabaseList();
  }

  // fetchUserInfo() async {
  //   FirebaseUser getUser = await FirebaseAuth.instance.currentUser();
  //   userID = getUser.uid;
  // }

  fetchDatabaseList() async {
    dynamic resultant = await DatabaseManager().getUsersList();

    if (resultant == null) {
      print('Unable to retrieve');
    } else {
      setState(() {
        userProfilesList = resultant;
      });
    }
  }

  updateData(String name, String gender, int score, String userID) async {
    await DatabaseManager().updateUserList(name, gender, score, userID);
    fetchDatabaseList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        centerTitle: true,
        title: Text(
          "Flutter",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (Context) => Profile()));
              },
              child: Icon(
                Icons.person,
                color: AppColors.whiteColor,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: 
      Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),

        child: ListView.separated(
          itemCount: userProfilesList.length,
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 20,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                color: AppColors.appColor,
                 boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
              ),
              child: Row(
                children: [
//Image(image: AssetImage(""),height: 100,width: 100,),
                Text("hai"),
              
                  // Text(userProfilesList[index]['name']),
                  // Text(userProfilesList[index]['gender']),
                  // Text('${userProfilesList[index]['name']}')
                ],
              ),
            );
          },
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _auth.signOut().then((result) {
            Navigator.of(context).pop(true);
          });
        },
        child: Center(child: const Icon(Icons.logout)),
        backgroundColor: AppColors.appColor,
      ),
    );
  }
}
