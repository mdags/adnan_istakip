import 'dart:io';

import 'package:flutter/material.dart';

class CloseWorkPage extends StatefulWidget {
  @override
  _CloseWorkPageState createState() => _CloseWorkPageState();
}

class _CloseWorkPageState extends State<CloseWorkPage> {
  final formKey = new GlobalKey<FormState>();
  final secondary = Color(0xffffbb06);
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('İş Emri Kapat'),
      ),
      body: SingleChildScrollView(
        key: formKey,
        padding: EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: "Kapatma Notunuz",
                ),
              ),

              Center(
                child: Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      _image == null
                          ? SizedBox(
                        height: 150.0,
                        width: 150.0,
                        child: Text('Fotoğraf eklenmedi.'),
                      )
                          : Image.file(
                        _image,
                        width: 150.0,
                        height: 150.0,
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            child: const Text('Fotoğraf Çek'),
                            onPressed: () {

                            },
                          ),
                          FlatButton(
                            child: const Text('Fotoğrafı Sil'),
                            textColor: Colors.redAccent,
                            hoverColor: Theme
                                .of(context)
                                .primaryColor,
                            onPressed: () {
                              setState(() {
                                _image = null;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  color: secondary,
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(20.0),
                  child: Text("İş Emrini Kapat".toUpperCase()),
                  onPressed: (){

                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
