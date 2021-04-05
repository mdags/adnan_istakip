import 'dart:io';

import 'package:flutter/material.dart';

class NewWorkPage extends StatefulWidget {
  @override
  _NewWorkPageState createState() => _NewWorkPageState();
}

class _NewWorkPageState extends State<NewWorkPage> {
  final formKey = new GlobalKey<FormState>();
  final secondary = Color(0xffffbb06);
  File _image;

  //final picker = ImagePicker();

  String departmanValue = 'Bilgi İşlem';
  List<String> departmanList = [
    'Bilgi İşlem',
    'İK',
    'Muhasebe'
  ];

  String personelValue = 'Halil İbrahim TOMAS';
  List<String> personelList = [
    'Halil İbrahim TOMAS',
    'Çeliker BAHÇECİ',
    'Mehmet DAĞDEVİREN'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni İş Emri'),
      ),
      body: SingleChildScrollView(
        key: formKey,
        padding: EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            children: <Widget>[
              DropdownButtonFormField(
                isExpanded: true,
                value: departmanValue,
                decoration: InputDecoration(labelText: 'Departman'),
                items: departmanList.map((value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (newValue) {
                  departmanValue = newValue;
                },
              ),

              DropdownButtonFormField(
                isExpanded: true,
                value: personelValue,
                decoration: InputDecoration(labelText: 'Personel'),
                items: personelList.map((value) {
                  return DropdownMenuItem<String>(
                    child: Text(value),
                    value: value,
                  );
                }).toList(),
                onChanged: (newValue) {
                  personelValue = newValue;
                },
              ),

              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Konu",
                ),
              ),

              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: "Mesaj",
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
                  child: Text("Kaydet".toUpperCase()),
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