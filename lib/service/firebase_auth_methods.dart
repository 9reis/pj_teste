import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pj_teste/utils/show_snack_bar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth;

  FirebaseAuthMethods(this._auth);

  User get currentUser => _auth.currentUser!;

  // STATE PERSISTENCE
  Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();
  // FirebaseAuth.instance.userChanges();
  // FirebaseAuth.instance.idTokenChandes();

  // GOOGLE SIGN IN
  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
        // Create new Credential
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
        UserCredential userCredential =
            await _auth.signInWithCredential(credential);

        // if (userCredential.user != null) {
        //   if (userCredential.additionalUserInfo!.isNewUser) {}
        // }
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!, 15);
    }
  }

  // SIGN OUT
  Future<void> signOut(BuildContext context) async {
    try {
      await _auth.signOut();

      final GoogleSignInAccount? googleUser = await GoogleSignIn().disconnect();
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!, 15);
    }
  }
}
