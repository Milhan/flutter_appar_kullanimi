import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Üst Başlık",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Text(
              "Alt Başlık",
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.dehaze),
        ),
        actions: [
          TextButton(
              onPressed: () {
                print("Çıkışa Tıklandı");
              },
              child: Text(
                "Çıkış",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
          IconButton(
              onPressed: () {},
              tooltip: "Bilgi",
              icon: Icon(Icons.info_outline)),
          PopupMenuButton(
            child: Icon(Icons.more_vert),
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("Sil"), value: 1),
              PopupMenuItem(child: Text("Güncelle"), value: 2),
            ],
            onSelected: (menuItemValue) {
              if (menuItemValue == 1) {
                print("Sil Tıklandı");
              }
              if (menuItemValue == 2) {
                print("Güncelle Tıklandı");
              }
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
