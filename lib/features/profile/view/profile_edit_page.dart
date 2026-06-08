import 'package:flutter/material.dart';
import 'package:myapp/features/profile/controller/profile_controller.dart';
import 'package:provider/provider.dart';

class ProfileEditPage extends StatefulWidget {
  const ProfileEditPage({super.key});

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  late TextEditingController nameController;
  late TextEditingController roleController;

  @override
  void initState() {
    super.initState();
    final currentProfile = context.read<ProfileController>();
    nameController = TextEditingController(text: currentProfile.name);
    roleController = TextEditingController(text: currentProfile.role);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Edit Page")),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(hintText: 'what you want to change your Name?'),
          ),
          TextField(
            controller: roleController,
            decoration: InputDecoration(hintText: 'what you want to change your Role?'),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<ProfileController>().updateProfile(
                nameController.text,
                roleController.text,
              );
              Navigator.pop(context);
            },
            child: Text("Save"),
          ),
        ],
      ),
    );
  }
}
