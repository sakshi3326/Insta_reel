import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:insta/view/screens/add_video.dart';
import 'package:insta/view/screens/display_screen.dart';
import 'package:insta/view/screens/profile_screen.dart';
import 'package:insta/view/screens/search_screen.dart';

// getRandomColor() => Colors.primaries[Random().nextInt(Colors.primaries.length)];

getRandomColor() => [
  Colors.blueAccent,
  Colors.redAccent,
  Colors.greenAccent,
][Random().nextInt(3)];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

var pageindex = [
  DisplayVideo_Screen(),
  SearchScreen(),
  addVideoScreen(),
  Text('Coming Soon In New Updates!'),
  ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid,),
];
