import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pet_guardian/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:pet_guardian/services/firebase_services.dart';

class UserProvider extends ChangeNotifier {
  User? user;
  File? profileImage;
  bool isLoading = false;
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;

  final FirebaseService _firebaseService = FirebaseService();

  Future<void> captureImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? photo = await picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 25,
        maxWidth: 1024,
        maxHeight: 1024);

    if (photo != null) {
      profileImage = File(photo.path);
      notifyListeners();
    }
  }

  Future<void> clearImage() async {
    profileImage = null;
    notifyListeners();
  }

  Future<void> registerUser(User newUser, String password) async {
    try {
      isLoading = true;
      notifyListeners();
      final authResult = await _auth.createUserWithEmailAndPassword(
        email: newUser.email,
        password: password,
      );

      String userId = authResult.user!.uid;

      String profilePictureURL = await _firebaseService.uploadImage(
        profileImage!,
        "Users",
        userId,
      );

      user = User(
        uid: authResult.user!.uid,
        username: newUser.username,
        email: newUser.email,
        contactNumber: newUser.contactNumber,
        profilePictureURL: profilePictureURL,
      );

      await _firebaseService.uploadDocument(
        "Users",
        user!,
        user!.uid,
      );
    } catch (error) {
      print("Error registering user: $error");
      throw error;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
