import 'package:flutter/material.dart';
import 'package:parent_ward/pages/draweritems/drawer_controller.dart';


class StudentProfile extends StatelessWidget {
  const StudentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Student Profile",
                style: TextStyle(fontSize: 24.0, color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Oluwashola",
                          style: TextStyle(fontSize: 34.0, color: Colors.black),
                        ),
                        Text(
                          "Elijah Stephen",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          "2019/233570",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          "Computer Science",
                          style: TextStyle(fontSize: 16.0),
                        ),
                        Text(
                          "200 Level",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 129, // Adjust width as needed
                    height: 130, // Adjust height as needed
                    decoration: BoxDecoration(
                      // Remove shape property (defaults to rectangle)
                      color: Colors.grey[200], // Set a background color
                      image: const DecorationImage(
                        fit: BoxFit.cover, // Ensure image covers the container
                        image: AssetImage(
                            "assest/images/WhatsApp Image 2024-04-18 at 14.32.28_fc2f9ab0.jpg"), // Use AssetImage for local image
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 120,
              ),
              const Text(
                "Second Semester",
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w600),
              ),
              const Text(
                "Week 8",
                style: TextStyle(fontSize: 16.0),
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.start, // Align cards to left
                    children: [
                      infoCard(
                          title: 'Current CGPA',
                          data: '3.92',
                          color: const Color(0XFF798E76),
                          textPosition: MainAxisAlignment.end,
                          width: 217,
                          height: 114),
                      const SizedBox(width: 10), // Add spacing between cards
                      infoCard(
                          title: 'Weekly Attendance',
                          data: '3/6',
                          color: const Color(0XFFB4C193),
                          textPosition: MainAxisAlignment.start,
                          width: 95,
                          height: 144),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.start, // Align cards to left
                children: [
                  infoCard(
                      title: 'Outstanding Fees',
                      data: '4',
                      color: const Color(0XffC5D6B2),
                      width: 261,
                      height: 80), // Adjust properties as needed
                  const SizedBox(width: 10), // Add spacing between cards
                  infoCard(
                      title: 'Carry Over',
                      data: '3',
                      color: const Color(0XFFC5D6B2),
                      width: 51,
                      height: 105), // Adjust properties as needed
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget infoCard({
  required String title,
  required String data,
  Color color = Colors.grey, // Default color (non-nullable)
  MainAxisAlignment textPosition = MainAxisAlignment.center,
  double width = 350,
  double height = 400,
}) {
  // ... your existing infoCard code
  return Card(
    color: color,
    child: SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: textPosition,
        children: [
          const Spacer(),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(data,
              style:
                  const TextStyle(fontSize: 32, fontWeight: FontWeight.w600)),
          const Spacer()
        ],
      ),
    ),
  );
}
