import 'package:flutter/material.dart';

import '../../constants.dart';
import '../widgets/customAddIcon.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor,
        onTap: (index){

        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 25),
              label: 'Home'

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 25),
              label: 'Search'

          ),

          BottomNavigationBarItem(
              icon: customAddIcon(),
              label: ''

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.message, size: 25),
              label: 'Messages'

          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 25),
              label: 'Profile'

          ),
        ],
      ),


    );
  }
}
