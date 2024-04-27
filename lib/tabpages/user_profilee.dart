import 'package:flutter/material.dart';
import 'package:parent_ward/pages/draweritems/drawer_controller.dart';


class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  static const List<UserInfo> profileInfo = [
    UserInfo(label: "Username:", value: "abidoshaker"),
    UserInfo(label: "Email:", value: "abidoshaker@yahoo.com"),
  ];

  static const List<UserInfo> wardInfo = [
    UserInfo(label: "Name:", value: "Oluwashola Elisha Stephen"),
    UserInfo(label: "Department:", value: "Computer Science"),
    UserInfo(label: "Reg no:", value: "2019/242759"),
    UserInfo(label: "Level:", value: "200 level"),
  ];

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
      body: Container(
        margin: const EdgeInsets.only(left: 20.0, top: 10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [_buildHeading("Profile", TextAlign.left)]),
            _buildInfoList(profileInfo), // Display profile information
            const SizedBox(height: 120.0), // Add spacing
            _buildHeading("Ward", TextAlign.center),
            _buildInfoList(wardInfo), // Display ward information
          ],
        ),
      ),
    );
  }

  Widget _buildHeading(String text, TextAlign textAlign) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 25.0,
        color: Colors.black,
      ),
      textAlign: textAlign,
    );
  }

  Widget _buildInfoList(List<UserInfo> userInfo) {
    return Column(
      children: userInfo.map((userInfo) => _buildInfoRow(userInfo)).toList(),
    );
  }

  Widget _buildInfoRow(UserInfo userInfo) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userInfo.label,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 10.0),
        Text(
          userInfo.value,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class UserInfo {
  final String label;
  final String value;

  const UserInfo({
    required this.label,
    required this.value,
  });
}
