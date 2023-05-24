import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  String name;
  String profilePhoto;
  String email;
  String uid;

  User(
      {
        required this.name,
        required this.email,
        required this.profilePhoto,
        required this.uid
      }
      );

  //App - Firebase(Map)
  Map<String , dynamic> toJson() => {
    "name" : name,
    "profilePic" : profilePhoto,
    "email" : email,
    "uid" : uid
  };


  //Firebase(Map) - App(User)
  static User fromSnap( DocumentSnapshot snap){

    var snapshot = snap.data() as Map<String , dynamic>;
    return User(
        email: snapshot['email'],
        profilePhoto: snapshot["profilePic"],
        uid: snapshot["uid"],
        name: snapshot["name"]
    );

  }

}