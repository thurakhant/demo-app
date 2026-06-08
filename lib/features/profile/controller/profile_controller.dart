import 'package:flutter/material.dart';

class ProfileController extends ChangeNotifier {
  String _name = "Oak Soe Oo";
  String _role = "Software Engineering";

  // Getter Method For UI
  String get name => _name;
  String get role => _role;

  void updateProfile(String newName, String newRole) {
    _name = newName;
    _role = newRole;
    notifyListeners();
  }
}

// User Profile include name and role
// Edit Name and role
