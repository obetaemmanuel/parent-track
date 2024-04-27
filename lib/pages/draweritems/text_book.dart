import 'package:flutter/material.dart';
import 'package:parent_ward/pages/draweritems/drawer_controller.dart';
import 'package:parent_ward/pages/draweritems/text_info.dart';


class TextBooks extends StatelessWidget {
  const TextBooks({super.key});

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
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.0),
            Center(
              child: Text(
                "Recommended Textbooks",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Second Semester",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 12.0),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Textbook Title",
                      style: kTextBookTitleStyle,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  kVerticalDividerStyle,
                  SizedBox(width: 16.0),
                  Text(
                    "Price",
                    style: kTextBookTitleStyle,
                  ),
                ],
              ),
            ),
            kHorizontalDividerStyle,
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1. Principle of time management",
                    style: kTextBookTitleStyle,
                    textAlign: TextAlign.center,
                  ),
                  // SizedBox(width: 16.0),
                  // kVerticalDividerStyle,
                  // SizedBox(width: 16.0),
                  Text(
                    "#7,000",
                    style: kTextBookPriceStyle,
                  ),
                ],
              ),
            ),
            kHorizontalDividerStyle,
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "2. Principle of time management",
                      style: kTextBookTitleStyle,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  kVerticalDividerStyle,
                  SizedBox(width: 16.0),
                  Text(
                    "#7,000",
                    style: kTextBookPriceStyle,
                  ),
                ],
              ),
            ),
            kHorizontalDividerStyle,
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "3. Priciple of time management and machine learning",
                    style: kTextBookTitleStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                // SizedBox(width: 16.0),
                // kVerticalDividerStyle,
                // SizedBox(width: 16.0),
                Text(
                  "#7000",
                  style: kTextBookPriceStyle,
                ),
              ],
            ),
            kHorizontalDividerStyle,
          ],
        ),
      ),
    );
  }
}
