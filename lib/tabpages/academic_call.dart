import 'package:flutter/material.dart';
import 'package:parent_ward/pages/draweritems/drawer_controller.dart';


class AcademicCalendar extends StatelessWidget {
  const AcademicCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    final List<Color> colors = [
      const Color.fromARGB(255, 121, 142, 118),
      const Color(0XFFC5D6B2),
      const Color(0XffB4C193),
      const Color(0XffA1C39E),
    ];

    final List<AcademicItem> calendarItems = [
      const AcademicItem(
        month: 'April',
        year: 2024,
        details: [
          'Registration of courses starts for freshers',
          '',
        ],
      ),
      const AcademicItem(
        month: 'May',
        year: 2024,
        details: ['Mid-Semester break starts'],
      ),
      const AcademicItem(
        month: 'June',
        year: 2024,
        details: [
          'End-Semester exams begin',
          'Students expected to score above 30',
        ],
      ),
      const AcademicItem(
        month: 'July',
        year: 2024,
        details: ['Summer break starts'],
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: scaffoldKey, // Assign the GlobalKey to the Scaffold
        appBar: AppBar(
          title: const Text(""),
          leading: IconButton(
            icon: const Icon(Icons.menu), // Menu icon
            onPressed: () => scaffoldKey.currentState
                ?.openDrawer(), // Use the GlobalKey to access the Scaffold state
          ),
        ),
        drawer: const DrawerCustom(),
        body: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Academic Calendar',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: calendarItems.length,
                itemBuilder: (context, index) {
                  final AcademicItem item = calendarItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 260,
                      width: 345,
                      decoration: BoxDecoration(
                        color: colors[index % colors.length],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: <Widget>[
                          // Month and Year section with adjusted padding
                          Container(
                            // Wrap with Container for top padding
                            padding: const EdgeInsets.only(
                                left: 8.0, top: 40.0, bottom: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(item.month,
                                    style: const TextStyle(fontSize: 24)),
                                Text(item.year.toString(),
                                    style: const TextStyle(fontSize: 24)),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                          // Details section with Expanded for remaining space
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 40.0, horizontal: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: item.details.map((detail) {
                                  return Text(
                                    detail,
                                    style: const TextStyle(fontSize: 16),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AcademicItem {
  final String month;
  final int year;
  final List<String> details;

  const AcademicItem({
    required this.month,
    required this.year,
    required this.details,
  });
}
