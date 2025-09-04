import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sign up with email and password
  Future<User?> signUpWithEmail(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      print('Sign up failed: $e');
      return null;
    }
  }

  // Sign in with email and password
  Future<User?> signInWithEmail(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      print('Sign in failed: $e');
      return null;
    }
  }

  // Sign out
  Future<void> sign_Out() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print('Sign out failed: $e');
    }
  }

  // Check if a user is signed in
  User? getCurrentUser() {
    return _auth.currentUser;
  }

  // Forgot password: Send a password reset email
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      print('Password reset email sent. Please check your email.');
    } on FirebaseAuthException catch (e) {
      print('Password reset failed: $e');
    }
  }



  //For Google signing

  final googleSignIn = GoogleSignIn();

  Future<User?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

        final AuthCredential authCredential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        // Sign in with Firebase
        UserCredential userCredential = await _auth.signInWithCredential(authCredential);

        // Return the signed-in user
        return userCredential.user;
      } else {
        print("Google Sign-In canceled by user");
        return null;
      }
    } on FirebaseAuthException catch (e) {
      print("Error during Google Sign-In: $e");
      return null;
    }
  }

  google_signout() async{
    await googleSignIn.signOut();
  }

}
