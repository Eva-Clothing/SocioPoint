
import 'package:socioPoints/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:socioPoints/services/database.dart';

class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  
    Future<bool> isUserLoggedIn() async {
    var user = await _auth.currentUser();
    return user != null;
  }

  //create user obj base on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }

  //auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
    //.map((FirebaseUser user) => _userFromFirebase(user));
    .map(_userFromFirebaseUser);
  }

  //sign in anonymously

  Future signInAnon() async{
    try{
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  // sign in with email and password
   Future signInWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
       // create a new document for the user with the uid
      await FirestoreService(uid:user.uid).createUser();
      
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }


  // sign out
  Future signOut() async{
    try{
      return await _auth.signOut();
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }
}