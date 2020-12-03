import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  final FirebaseAuth auth;
  Authentication(this.auth);
//signed in or out => user or 0
  Stream<User> get authStateChanges => auth.authStateChanges();

  Future<String> signIn({String email, String password}) async {
    try {
      //async - await -> firebasefunction is called
      await auth.signInWithEmailAndPassword(email: email, password: password);
      return "Signed In";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signUp({String email, String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed Up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signOut() async {
    await auth.signOut();
    return "Signed Out";
  }
}
