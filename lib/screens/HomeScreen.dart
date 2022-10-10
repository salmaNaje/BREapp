import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        title: Text('HomeScreen'),
      ),
      body: FutureBuilder(
          future: _getimages(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text('Real Estate \n Benghazi'),
                        SizedBox(
                          height: 20,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 1,
                            mainAxisSpacing: 1,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            List reslist = snapshot.data;
                            return Card(
                              child: Container(
                                width: 120,
                                child: Image.asset(
                                  reslist[index].toString(),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                : Center(child: CircularProgressIndicator());
          }),
    );
  }
}
