import 'package:flutter/material.dart';
import 'package:parent_ward/pages/draweritems/drawer_controller.dart';


void main() {
  runApp(const ResultSummary());
}

class ResultSummary extends StatelessWidget {
  const ResultSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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
        body: ListView(
          children: const <Widget>[
            ResultCard(semester: 'First Semester, 300 lvl', results: [
              CourseResult(course: 'COS101', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH101', unit: '3', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'C'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'B'),
            ]),
            ResultCard(semester: 'Second Semester, 300 lvl', results: [
              CourseResult(course: 'COS201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'C'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'C'),
            ]),
            ResultCard(semester: 'FIRST Semester, 200 lvl', results: [
              CourseResult(course: 'COS201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'C'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'C'),
            ]),
            ResultCard(semester: 'Second Semester, 200 lvl', results: [
              CourseResult(course: 'COS201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'C'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'C'),
            ]),
            ResultCard(semester: 'FIRST Semester, 200 lvl', results: [
              CourseResult(course: 'COS201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'C'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'C'),
            ]),
            ResultCard(semester: 'Second Semester, 100 lvl', results: [
              CourseResult(course: 'COS201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'C'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'B'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '3', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'A'),
              CourseResult(course: 'MTH201', unit: '2', grade: 'C'),
            ]),
            // Add more semesters here
          ],
        ),
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  final String semester;
  final List<CourseResult> results;

  const ResultCard({required this.semester, required this.results, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              semester,
              style:
                  const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            LayoutBuilder(
              builder: (context, constraints) => DataTable(
                columnSpacing: 0,
                headingRowColor: MaterialStateProperty.all(Colors.grey[200]!),
                columns: <DataColumn>[
                  DataColumn(
                    label: Container(
                      width: constraints.maxWidth / 3,
                      child: const Text(
                        'Course',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Container(
                      width: constraints.maxWidth / 3,
                      child: const Text(
                        'Unit',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Container(
                      width: constraints.maxWidth / 3,
                      child: const Text(
                        'Grade',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ),
                ],
                rows: results.map((CourseResult result) {
                  return DataRow(
                    cells: <DataCell>[
                      DataCell(Container(
                          width: constraints.maxWidth / 3,
                          child: Text(result.course))),
                      DataCell(Container(
                          width: constraints.maxWidth / 3,
                          child: Text(result.unit))),
                      DataCell(Container(
                          width: constraints.maxWidth / 3,
                          child: Text(result.grade))),
                    ],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseResult {
  final String course;
  final String unit;
  final String grade;

  const CourseResult(
      {required this.course, required this.unit, required this.grade});
}
