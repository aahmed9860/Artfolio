import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> addUserProfile(String userId, String displayName, String email) async {
    try {
      await _firestore.collection('users').doc(userId).set({
        'displayName': displayName,
        'email': email,
      });
      return "User profile created successfully";
    } catch (e) {
      return e.toString();
    }
  }

  Future<Map<String, dynamic>> getUserProfile(String userId) async {
    try {
      var userData = await _firestore.collection('users').doc(userId).get();
      if (userData.exists) {
        return userData.data()!;
      } else {
        return {};
      }
    } catch (e) {
      return {};
    }
  }

  Future<String> addArtwork(String userId, String title, String description) async {
    try {
      await _firestore.collection('artworks').add({
        'userId': userId,
        'title': title,
        'description': description,
      });
      return "Artwork added successfully";
    } catch (e) {
      return e.toString();
    }
  }

  Stream<List<DocumentSnapshot>> getAllArtworks() {
    return _firestore.collection('artworks').snapshots().map((snapshot) => snapshot.docs);
  }
}
