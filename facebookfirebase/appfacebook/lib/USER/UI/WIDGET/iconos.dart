import 'package:appfacebook/USER/BLOC/provideruser.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Iconos extends StatelessWidget {
  late Userbloc userBloc;

  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
    return Container(
        height: 50.0,
        padding: EdgeInsets.only(right: 20.0, left: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child: FlatButton(onPressed:  (){
                // ignore: avoid_print
                userBloc.singInWithFacebook().then((user) async => print("El usuario es ${user!.user}"));
                },
                child: Image.asset('images/google.png')
                )
            ),
            Image.asset('images/facebook.png'),
            Image.asset('images/gorjeo.png'),
            Image.asset('images/instagram.png'),
          ],
        )
    );
  }
}
