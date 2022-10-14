import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class Rent extends StatefulWidget {
  const Rent({super.key});

  @override
  State<Rent> createState() => _RentState();
}

class _RentState extends State<Rent> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 2,
        // ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 0.9.h,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.account_circle_rounded, size: 6.h),
                    title: const Text('Villa'),
                    subtitle: Text(
                      'In Benghazi',
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 2.h,
                      ),
                      child: Image.asset('Assets/images/house.jpg')),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 2.h,
                      vertical: 2.h,
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 25.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(132, 146, 125, 118),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              '15,000 Dollers',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Row(
                          children: [
                            Icon(Icons.add_home_work),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Rent Now',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
