import 'package:firebase_auth/firebase_auth.dart';
import 'authfb.dart';

class AutRepository{
  final _autFirebase = AutFacebook();
  Future <UserCredential?> singInFirebase() => _autFirebase.signInWithFacebook();

  Future singOutFirebase() async {}
}