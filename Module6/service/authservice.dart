import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create user object based on FirebaseUser
  User? _userFromFirebaseUser(User? user) {
    return user;
  }

  // Register user with email and password
  Future<User?> registerWithEmailAndPassword(String email, String password) async {
    UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return _userFromFirebaseUser(result.user);
  }

  // Sign in with email and password
  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return _userFromFirebaseUser(result.user);
  }

  // Sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  // Check if user is logged in
  Stream<User?> get user {
    return _auth.authStateChanges();
  }
}