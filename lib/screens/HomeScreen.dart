import 'package:bre/Settings/Tapbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List images = [
  "Assets/images/apartment.png",
  "Assets/images/villa.png",
  "Assets/images/ofice.png",
  "Assets/images/shop.png",
];

class _HomeScreenState extends State<HomeScreen> {
  var dummy;
  @override
  void initState() {
    super.initState();
    dummy = _getimages();
    print("data ${dummy}");
  }

  _getimages() async {
    var imagelist = await images;
    print(imagelist);
    return imagelist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'HomeScreen',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('data/data.json'),
        builder: (context, Snapshot) {
          if (Snapshot.hasError) {
            return Center(
              child: Text('something went wrong'),
            );
          }
          if (Snapshot.hasData) {
            var showData;
            showData = json.decode('Snapshot.data');
            return ListView.builder(
                itemCount: showData.length,
                itemBuilder: (context, index) {
                  return buildTile(showData[index]);
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

buildTile(Map<String, dynamic> obj) {
  return ListTile(
    title: Text('${obj['id']}'),
    subtitle: Text('${obj['price']}'),
    trailing: Text('${obj['location']}'),
    leading: Text(('${obj['image']}')),
  );
}
