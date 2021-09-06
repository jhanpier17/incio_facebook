import 'package:appfacebook/USER/BLOC/provideruser.dart';
import 'package:appfacebook/USER/UI/WIDGET/button.dart';
import 'package:appfacebook/USER/UI/WIDGET/googleButton.dart';
import 'package:appfacebook/USER/UI/WIDGET/iconos.dart';
import 'package:appfacebook/USER/UI/WIDGET/textInput.dart';
import 'package:appfacebook/USER/UI/screen/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Profile extends StatelessWidget {
  final _controllerName = TextEditingController();
  final _controllerPassword = TextEditingController();

  late Userbloc userBloc;
  @override
  Widget build(BuildContext context) {
    //userBloc = BlocProvider.of(context);
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0),
              alignment: Alignment.center,
              width: 380.00,
              height: 60.00,
              child: Text(
                'Profile',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30.0, left: 130, right: 130),
              height: 150.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("images/cam.png")),
                borderRadius: BorderRadius.all(Radius.circular(100.0)),
              ),
            ),
            /*Inicio de sesion*/
            Container(
                margin: EdgeInsets.only(top: 15.0),
                child: TextInput(
                  hintText: "Enter you email address",
                  iconImage: Icon(Icons.email),
                  inputType: TextInputType.emailAddress,
                  controller: _controllerName,
                  maxLines: 1,
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 15.0),
                child: TextInput(
                  hintText: "Username",
                  iconImage: Icon(Icons.email),
                  inputType: TextInputType.emailAddress,
                  controller: _controllerName,
                  maxLines: 1,
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 15.0),
                child: TextInput(
                  hintText: "Password",
                  iconImage: Icon(Icons.lock),
                  inputType: TextInputType.visiblePassword,
                  controller: _controllerPassword,
                  maxLines: 1,
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 15.0),
                child: TextInput(
                  hintText: "Repeat Password",
                  iconImage: Icon(Icons.lock),
                  inputType: TextInputType.visiblePassword,
                  controller: _controllerPassword,
                  maxLines: 1,
                )
            ),
            
            Container(
                //margin: EdgeInsets.only(top: 15.0),
                //padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 20.0),
                child: Button(
                  text: "Sing up", 
                  routeLink: Login(),
                ),
            ),
            /*GoogleButton(text: "Sign Out Google", onPressed: () async{
                userBloc.signOutGoogle();
              }, widthC: 35, heightC: 80),
             Container(
              margin: EdgeInsets.only(top: 60.0),
              alignment: Alignment.center,
              width: 380.00,
              height: 20.00,
              child: Text(
                "Login with",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),*/
            Container(
                margin: EdgeInsets.only(top: 15.0),
                child: Iconos(
                ),
            ),
             Container(
              margin: EdgeInsets.only(top: 50.0),
              alignment: Alignment.center,
              width: 380.00,
              height: 20.00,
              child: Text(
                "theme of service",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
