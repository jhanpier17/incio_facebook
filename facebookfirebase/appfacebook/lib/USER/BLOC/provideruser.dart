import 'package:appfacebook/USER/REPOSITORY/authRepository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';


class Userbloc implements Bloc{
  final _autRepository = AutRepository();

  Stream<User?> streamFirebase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFirebase;

  Future <UserCredential?> singInWithFacebook(){
    return _autRepository.singInFirebase();
  }

  /*Future signOutGoogle(){
     return _autRepository.singOutFirebase();
  }*/

  @override
  void dispose() {
  }
}