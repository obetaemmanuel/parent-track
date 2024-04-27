import 'package:flutter/material.dart';
import 'package:parent_ward/pages/draweritems/drawer_controller.dart';


void main() {
  runApp(const Suggestion());
}

class Suggestion extends StatelessWidget {
  const Suggestion({super.key});

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
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            // Center content vertically
            children: [
              // Heading
              const Row(
                children: [
                  Text(
                    'Suggestion',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),

              const SizedBox(
                  height: 20), // Add spacing between heading and textfield

              // Text field for suggestions
              Container(
                width: 388,
                height: 284,
                decoration: BoxDecoration(
                  color: const Color(0xFFC5D6B2).withOpacity(0.75),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const TextField(
                  maxLines: null, // Allow multi-line text
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(16),
                    hintText: 'Enter your suggestion here',
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(
                  height: 20), // Add spacing between textfield and button

              // Button with specified color
              ElevatedButton(
                onPressed: () {
                  // Handle button press (e.g., print a message)
                  print('Suggestion submitted!');
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(388, 50),
                  backgroundColor:
                      const Color(0xFF798E76), // Button background color
                ),
                child: const Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
