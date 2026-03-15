import 'package:flutter/material.dart';
import 'package:myapp/custom_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    TextStyle profileTextStyle = TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    Decoration profileBoxDecoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      color: Colors.amber,
    );

    return Scaffold(
      appBar: AppBar(title: Text("Profile Card")),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 140,
              decoration: profileBoxDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage("assets/profile_cover.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name: Thura Khant Thein", style: profileTextStyle),
                      Text("Role : Software Engineer", style: profileTextStyle),
                      Text("Phone Number : 09 123", style: profileTextStyle),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            CustomButton(
              buttonText: "Move",
              borderRadius: 5,
              width: double.infinity,
              height: 48,
              onTap: () {
                print("Move");
              },
            ),
            SizedBox(height: 10),
            CustomButton(
              buttonText: "Set",
              borderRadius: 30,
              width: double.infinity,
              height: 48,
              onTap: () {
                print("Set");
              },
            ),
            Text("Activity Bar", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),

            // DefaultTabController(
            //   length: 2,
            //   child: SizedBox(
            //     width: double.infinity,
            //     child: TabBar(
            //       tabs: [
            //         Tab(text: 'Home'),
            //         Tab(text: 'Hisotry'),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
