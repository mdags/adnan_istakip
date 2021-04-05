import 'package:adnanistakip/screens/closeWork.dart';
import 'package:adnanistakip/screens/newwork.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum Answers{TOME, TOMINE, TODEPARTMENT}

class _HomePageState extends State<HomePage> {
  final TextStyle dropdownMenuItem =
  TextStyle(color: Colors.black, fontSize: 18);

  final primary = Color(0xffffbb06);
  final secondary = Color(0xffffbb06);

  String _value = '';
  void _setValue(String value) => setState(() => _value = value);

  final List<Map> schoolLists = [
    {
      "name": "Konu",
      "location": "09.06.2020",
      "type": "Halil İbrahim TOMAS",
      "status": "Beklemede",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
    },
    {
      "name": "Konu",
      "location": "09.06.2020",
      "type": "Halil İbrahim TOMAS",
      "status": "Beklemede",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
    },
    {
      "name": "Konu",
      "location": "09.06.2020",
      "type": "Halil İbrahim TOMAS",
      "status": "Beklemede",
      "logoText":
      "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Konu",
      "location": "09.06.2020",
      "type": "Halil İbrahim TOMAS",
      "status": "Beklemede",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
    },
    {
      "name": "Konu",
      "location": "09.06.2020",
      "type": "Halil İbrahim TOMAS",
      "status": "Beklemede",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
    },
    {
      "name": "Konu",
      "location": "09.06.2020",
      "type": "Halil İbrahim TOMAS",
      "status": "Beklemede",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
    },
    {
      "name": "Konu",
      "location": "09.06.2020",
      "type": "Halil İbrahim TOMAS",
      "status": "Beklemede",
      "logoText":
      "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Konu",
      "location": "09.06.2020",
      "type": "Halil İbrahim TOMAS",
      "status": "Beklemede",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 145),
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: schoolLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
              ),
              Container(
                height: 140,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                        ),
                      ),
                      Text(
                        "İş Emirleri",
                        style: TextStyle(fontSize: 24),
                      ),
                      IconButton(
                        onPressed: () {
                          _filterDialog();
                        },
                        icon: Icon(
                          Icons.filter_list,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 110,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        child: TextField(
                          // controller: TextEditingController(text: locations[0]),
                          cursorColor: Theme
                              .of(context)
                              .primaryColor,
                          style: dropdownMenuItem,
                          decoration: InputDecoration(
                              hintText: "İş Emri Ara",
                              hintStyle: TextStyle(
                                  color: Colors.black38, fontSize: 16),
                              prefixIcon: Material(
                                elevation: 0.0,
                                borderRadius:
                                BorderRadius.all(Radius.circular(30)),
                                child: Icon(Icons.search),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 13)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) {
              return NewWorkPage();
            },
            fullscreenDialog: true,
          ));
        },
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 190,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  schoolLists[index]['name'],
                  style: TextStyle(
                    //color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.date_range,
                      //color: secondary,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(schoolLists[index]['location'],
                        style: TextStyle(
                          //color: primary,
                            fontSize: 13,
                            letterSpacing: .3)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.person,
                      //color: secondary,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(schoolLists[index]['type'],
                        style: TextStyle(
                          //color: primary,
                            fontSize: 13,
                            letterSpacing: .3)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.av_timer,
                      //color: secondary,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(schoolLists[index]['status'],
                        style: TextStyle(
                          //color: primary,
                            fontSize: 13,
                            letterSpacing: .3)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Talebi Kapat'),
                      color: secondary,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      onPressed: (){
                        Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) {
                            return CloseWorkPage();
                          },
                          fullscreenDialog: true,
                        ));
                      },
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future _filterDialog() async {
    switch(
    await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text("Filtre Seçiniz", textAlign: TextAlign.center,),
          children: <Widget>[
            new SimpleDialogOption(
              child: new Text("Bana Atanan", textAlign: TextAlign.center,),
              onPressed: (){
                Navigator.pop(context, Answers.TOME);
              },
            ),
            new SimpleDialogOption(
              child: new Text("Atadıklarım", textAlign: TextAlign.center,),
              onPressed: (){
                Navigator.pop(context, Answers.TOMINE);
              },
            ),
            new SimpleDialogOption(
              child: new Text("Departmana Atanan", textAlign: TextAlign.center,),
              onPressed: (){
                Navigator.pop(context, Answers.TODEPARTMENT);
              },
            )
          ],
        )
    )
    ) {
      case Answers.TOME:
        _setValue('Yes');
        break;
      case Answers.TOME:
        _setValue("No");
        break;
      case Answers.TODEPARTMENT:
        _setValue("Maybe");
        break;
    }
  }
}