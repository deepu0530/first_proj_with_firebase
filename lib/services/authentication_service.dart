import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_proj/database_managers/all_categories_manager.dart';
import 'package:first_proj/database_managers/profile_manager.dart';

class AuthenticationServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Registration with email and password

  Future CreateNewUser(String name, String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      await DatabaseManager().createUserData(name, 'Male', 100, user!.uid);
     
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  //login with email and password
  Future login(String email, String password) async {
    try {
      UserCredential authResult = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = authResult.user;
  
      return user;
    } catch (e) {
      print(e.toString());
    }
  }
  //logout

   Future signOut() async {
    try {
      return _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
