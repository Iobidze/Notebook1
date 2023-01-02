import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'main.dart';
import 'notepad.dart';
import 'package:google_sign_in/google_sign_in.dart';
Future<void> registration()async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseAuth.instance.authStateChanges().listen((User? user) {
    if (user != null){
      print(user.uid);
    }
  });
}
Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

class Registration extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: implement build
    return Center(
      child: Container(
        // color: Colors.red,
        width: 300,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'Почта',
                )),
            const TextField(
              maxLines: 1,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Пароль',
              ),
            ),
            TextButton(
                onPressed: () {
                  //
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => MyHomePage()));
                  //
                },
                child: Text('Войти')),
            TextButton(
                onPressed: signInWithGoogle, //{
                //   //
                //   // Navigator.of(context).push(MaterialPageRoute(
                //   //     builder: (BuildContext context) => MyHomePage()));
                //   // //
                // },
                child: Text('Войти через Google')),
          ],
        ),
      ),
    );
  }
}
