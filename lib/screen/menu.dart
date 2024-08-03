import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mevivu_interview/screen/home.dart';
import 'package:mevivu_interview/widget/menu_item.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _currentIndex = 0;

  _onMenuItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(10, 142, 217, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(10, 142, 217, 1),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              _onMenuItem(0);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: menuItem(
              context,
              null,
              'Home',
              Icons.home_outlined,
              Colors.white,
              Colors.white,
              FontWeight.w500,
              _currentIndex == 0,
            ),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => _onMenuItem(1),
            child: menuItem(
              context,
              null,
              'Profile',
              CupertinoIcons.person,
              Colors.white,
              Colors.white,
              FontWeight.w400,
              _currentIndex == 1,
            ),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => _onMenuItem(3),
            child: menuItem(
              context,
              null,
              'NearBy',
              Icons.location_on_outlined,
              Colors.white,
              Colors.white,
              FontWeight.w400,
              _currentIndex == 3,
            ),
          ),
          const SizedBox(height: 24),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width * 0.44,
            color: const Color.fromRGBO(255, 255, 255, 0.5),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => _onMenuItem(4),
            child: menuItem(
              context,
              null,
              'Bookmark',
              Icons.bookmark_border_outlined,
              Colors.white,
              Colors.white,
              FontWeight.w400,
              _currentIndex == 4,
            ),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => _onMenuItem(5),
            child: menuItem(
              context,
              null,
              'Notification',
              Icons.notifications_none_outlined,
              Colors.white,
              Colors.white,
              FontWeight.w400,
              _currentIndex == 5,
            ),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => _onMenuItem(6),
            child: menuItem(
              context,
              null,
              'Message',
              CupertinoIcons.chat_bubble,
              Colors.white,
              Colors.white,
              FontWeight.w400,
              _currentIndex == 6,
            ),
          ),
          const SizedBox(height: 24),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width * 0.44,
            color: const Color.fromRGBO(255, 255, 255, 0.5),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => _onMenuItem(7),
            child: menuItem(
              context,
              null,
              'Setting',
              Icons.settings_outlined,
              Colors.white,
              Colors.white,
              FontWeight.w400,
              _currentIndex == 7,
            ),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => _onMenuItem(8),
            child: menuItem(
              context,
              null,
              'Help',
              Icons.help_outline_rounded,
              Colors.white,
              Colors.white,
              FontWeight.w400,
              _currentIndex == 8,
            ),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => _onMenuItem(9),
            child: menuItem(
              context,
              null,
              'Logout',
              Icons.power_settings_new_outlined,
              Colors.white,
              Colors.white,
              FontWeight.w400,
              _currentIndex == 9,
            ),
          ),
        ],
      ),
    );
  }
}
