import 'package:flutter/material.dart';
import 'package:myapp/features/profile/controller/profile_controller.dart';
import 'package:myapp/features/profile/view/profile_edit_page.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = context.watch<ProfileController>();
    return Scaffold(
      appBar: AppBar(title: Text("My Profile Dashboard")),
      body: Center(
        child: Column(
          spacing: 20,
          children: [
            CircleAvatar(radius: 50, child: Icon(Icons.person)),
            Text(profile.name),
            Text(profile.role),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileEditPage()));
              },
              label: Icon(Icons.edit),
            ),
          ],
        ),
      ),
    );
  }
}
