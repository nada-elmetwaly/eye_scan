import 'dart:developer';
import 'dart:io';

import 'package:eye_scan/CHAAT/helper/dialog.dart';
import 'package:eye_scan/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../api/apis.dart';
import '../home_screen.dart';

//login screen -- implements google sign in or sign up feature for app
class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  bool _isAnimate = false;

  @override
  void initState() {
    super.initState();

    //for auto triggering animation
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() => _isAnimate = true);
    });
  }

  // handles google login button click
  _handleGoogleBtnClick() {
    //for showing progress bar
    Dialogs.showProgressBar(context);

    _signInWithGoogle().then((user) async {
      //for hiding progress bar
      Navigator.pop(context);

      if (user != null) {
        log('\nUser: ${user.user}');
        log('\nUserAdditionalInfo: ${user.additionalUserInfo}');

        if (await APIs.userExists() && mounted) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const ChatHomeScreen()));
        } else {
          await APIs.createUser().then((value) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => const ChatHomeScreen()));
          });
        }
      }
    });
  }

  Future<UserCredential?> _signInWithGoogle() async {
    try {
      await InternetAddress.lookup('google.com');
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return await APIs.auth.signInWithCredential(credential);
    } catch (e) {
      log('\n_signInWithGoogle: $e');

      if (mounted) {
        Dialogs.showSnackbar(context, 'Something Went Wrong (Check Internet!)');
      }

      return null;
    }
  }

  //sign out function
  // _signOut() async {
  //   await FirebaseAuth.instance.signOut();
  //   await GoogleSignIn().signOut();
  // }

  @override
  Widget build(BuildContext context) {
    //initializing media query (for getting device screen size)
    // mq = MediaQuery.of(context).size;

    return Scaffold(
      //app bar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      //body
      body: Stack(children: [
        //app logo
        AnimatedPositioned(
            top: mq.height * .15,
            right: _isAnimate ? mq.width * .25 : -mq.width * .5,
            width: mq.width * .5,
            duration: const Duration(seconds: 1),
            child: Image.asset('assetes/icon.png')),

        //google login button
        Positioned(
            bottom: mq.height * .15,
            left: mq.width * .05,
            width: mq.width * .9,
            height: mq.height * .06,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 188, 228, 255).withOpacity(0.6),
                    shape: const StadiumBorder(),
                    elevation: 1),

                // on tap
                onPressed: _handleGoogleBtnClick,

                //google icon
                icon: Image.asset('assetes/google.png', height: mq.height * .03),

                //login with google label
                label: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(text: 'Login with ' , style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: 'Google',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ]),
                ))),
      ]),
    );
  }
}