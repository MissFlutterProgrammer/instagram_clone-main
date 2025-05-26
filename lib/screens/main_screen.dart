// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:instagram/screens/activity_screen.dart';
import 'package:instagram/screens/add_content_screen.dart';
import 'package:instagram/screens/home_screen.dart';
import 'package:instagram/screens/search_screen.dart';
import 'package:instagram/screens/user_profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationItem = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedBottomNavigationItem = index;
    });
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      extendBody: true,
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeScreen(),
          SearchScreen(),
          AddContentScreen(),
          ActivityScreen(),
          UserProfileScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Theme.of(context).colorScheme.surface,
            currentIndex: _selectedBottomNavigationItem,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/icon_home.png',
                  color: Colors.grey,
                ),
                activeIcon: Image.asset(
                  'images/icon_active_home.png',
                  color: Theme.of(context).primaryColor,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/icon_search_navigation.png',
                  color: Colors.grey,
                ),
                activeIcon: Image.asset(
                  'images/icon_search_navigation_active.png',
                  color: Theme.of(context).primaryColor,
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/icon_add_navigation.png',
                  color: Colors.grey,
                ),
                activeIcon: Image.asset(
                  'images/icon_add_navigation_active.png',
                  color: Theme.of(context).primaryColor,
                ),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'images/icon_activity_navigation.png',
                  color: Colors.grey,
                ),
                activeIcon: Image.asset(
                  'images/icon_activity_navigation_active.png',
                  color: Theme.of(context).primaryColor,
                ),
                label: 'Activity',
              ),
              BottomNavigationBarItem(
                icon: _buildProfileIcon(false),
                activeIcon: _buildProfileIcon(true),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileIcon(bool isActive) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: isActive ? Theme.of(context).primaryColor : Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          'images/profile.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
