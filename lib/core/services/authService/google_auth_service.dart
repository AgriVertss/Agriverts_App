import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService {
  final googleSignIn = GoogleSignIn();

  late GoogleSignInAccount user;

  Future<bool> signInWithGoogle() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      user = googleUser;
    }

    final googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    var userCredentials =
        await FirebaseAuth.instance.signInWithCredential(credential);
    if (userCredentials.user != null) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> signOutFromGoogle() async {
    if(googleSignIn.currentUser!=null){
      await googleSignIn.disconnect();
    }
    FirebaseAuth.instance.signOut();
  }
}
