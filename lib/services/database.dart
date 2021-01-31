import 'package:socioPoints/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {

  final String uid;
  final String email;
   final String about;
    final String name;
  final String profileImageUrl;
  
  FirestoreService({this.uid,this.email,this.name,this.about,this.profileImageUrl});
  final CollectionReference _usersCollectionReference =
      Firestore.instance.collection("users");
      
  Future createUser() async {
    return
      await _usersCollectionReference.document(uid).setData({
      'email': email,
      'name': name,
      'about': about,
      'profileImageUrl': profileImageUrl,
    

});}}