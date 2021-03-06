import 'package:adnanistakip/screens/home.dart';
import 'package:adnanistakip/widgets/utils.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailReg = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  final util = Util();
  bool isTermsAccepted = false;
  final secondary = Color(0xffffbb06);
  final AssetImage logo = new AssetImage('images/logo.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  secondary,
                  Theme.of(context).primaryColor
                ]
            )
        ),
        child: Column(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.only(top: 40.0,bottom: 20.0),
                height: 80,
                child: Center()
            ),
            Text("ADNAN A.Ş.".toUpperCase(), style: TextStyle(
                color: Colors.white70,
                fontSize: 24.0,
                fontWeight: FontWeight.bold
            ),),
            Container(
              height: 128.0,
              width: 128.0,
              child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  foregroundColor: secondary,
                  radius: 100.0,
                  child: new Image(image: this.logo, width: 145.0, height: 90.0,)
              ),
            ),
            SizedBox(height: 40.0),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(10.0)
                        )
                    ),
                    child: Icon(
                      Icons.person,
                      color: secondary,)
                ),
                hintText: "Kullanıcı Adı",
                hintStyle: TextStyle(color: Colors.black54),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
              ),

            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16.0),
                prefixIcon: Container(
                    padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                    margin: const EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(10.0)
                        )
                    ),
                    child: Icon(
                      Icons.lock,
                      color: secondary,)
                ),
                hintText: "Şifre",
                hintStyle: TextStyle(color: Colors.black54),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.1),
              ),
              obscureText: true,
            ),
            SizedBox(height: 30.0),
            SizedBox(
              width: double.infinity,
              child: RaisedButton(
                color: Colors.white,
                textColor: secondary,
                padding: const EdgeInsets.all(20.0),
                child: Text("Oturum Aç".toUpperCase()),
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                      new MaterialPageRoute(
                          settings: const RouteSettings(name: '/home'),
                          builder: (context) =>
                          new HomePage()
                      ));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
              ),
            ),
            Spacer(),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}