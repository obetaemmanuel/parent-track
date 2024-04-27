import 'package:flutter/material.dart';
import 'package:parent_ward/pages/draweritems/fees.dart';
import 'package:parent_ward/pages/draweritems/result_summary.dart';
import 'package:parent_ward/pages/draweritems/text_book.dart';
import 'package:parent_ward/tabpages/academic_call.dart';
import 'package:parent_ward/tabpages/student_profile.dart';
import 'package:parent_ward/tabpages/suggestion.dart';


class DrawerCustom extends StatelessWidget {
  const DrawerCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Edu-Track',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                context, // Pass the current context
                MaterialPageRoute(
                    builder: (context) =>
                        const AcademicCalendar()), // Specify the target screen
              );
            },
          ),
          ListTile(
            title: const Text('Fees'),
            onTap: () {
              Navigator.push(
                context, // Pass the current context
                MaterialPageRoute(
                    builder: (context) =>
                        const SchooLFees()), // Specify the target screen
              );
            },
          ),
          ListTile(
            title: const Text('Result Summary'),
            onTap: () {
              Navigator.push(
                context, // Pass the current context
                MaterialPageRoute(
                    builder: (context) =>
                        const ResultSummary()), // Specify the target screen
              );
            },
          ),
          ListTile(
            title: const Text('Text Books'),
            onTap: () {
              Navigator.push(
                context, // Pass the current context
                MaterialPageRoute(
                    builder: (context) =>
                        const TextBooks()), // Specify the target screen
              );
            },
          ),
          ListTile(
            title: const Text('Student Profile'),
            onTap: () {
              Navigator.push(
                context, // Pass the current context
                MaterialPageRoute(
                    builder: (context) =>
                        const StudentProfile()), // Specify the target screen
              );
            },
          ),
          ListTile(
            title: const Text('Suggestions'),
            onTap: () {
              Navigator.push(
                context, // Pass the current context
                MaterialPageRoute(
                    builder: (context) =>
                        const Suggestion()), // Specify the target screen
              );
            },
          ),

          const SizedBox(
            height: 200,
          ),
          ListTile(
            title: const Text('Log-Out'),
            onTap: () {
              // Handle item 2 tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          // Add more list items as needed
        ],
      ),
    );
  }
}
