import 'package:flutter/material.dart';
import 'package:parent_ward/tabpages/academic_call.dart';
import 'package:parent_ward/tabpages/student_profile.dart';
import 'package:parent_ward/tabpages/suggestion.dart';
import 'package:parent_ward/tabpages/user_profilee.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: const [
          AcademicCalendar(),
          StudentProfile(),
          Suggestion(),
          UserProfile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          _tabController.animateTo(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Details',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: 'Suggest',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Profile',
          ),
        ],
        selectedLabelStyle: const TextStyle(fontSize: 12, color: Colors.black),
        unselectedLabelStyle: const TextStyle(fontSize: 12),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
      ),
    );
  }
}
