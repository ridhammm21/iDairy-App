import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService{

  //instance of auth
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //get current user
  User? getCurrentUser() {
    return _auth.currentUser;
  }

  //sign in
  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      
      //save user info if doesn't already exist
      _firestore.collection("users").doc(userCredential.user!.uid).set(
        {
          'uid' : userCredential.user!.uid,
          'email' : email,
          'wallet' : 0
        },
      );
      
      
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //sign up
  Future<UserCredential> signUpWithEmailPassword (String name, email, password) async {
    //create user
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      //save user info
      _firestore.collection("users").doc(userCredential.user!.uid).set(
        {
          'uid' : userCredential.user!.uid,
          'name' : name,
          'email' : email,
          'wallet' : 0
        },
      );

      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
 
  }
  

  //sign out
  Future<void> signOut() async {
    return await _auth.signOut();
  }


}