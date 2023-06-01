import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  //  String? email;
  // String? password;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String emails = '';
  String passwords = '';
  // SharedPreferences pref;
  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
    emails = pref.getString('email').toString();
    passwords = pref.getString('password').toString();
    });

  }

  // final List caroUse = ['Abc', 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // title: Text(email.toString()),
            ),
        body: Center(
          child: Column(
            children: [
              Text(emails),
              Text(passwords)

              // CarouselSlider(
              //   options: CarouselOptions(
              //     autoPlay: true, height: 300.0,
              //     ),
              //   items: caroUse.map((i) {
              //     return Builder(
                
              //       builder: (
              //         BuildContext context) {
              //         return Container(
              //             width: MediaQuery.of(context).size.width,
              //             margin: const EdgeInsets.symmetric(horizontal: 5.0),
              //             decoration: const BoxDecoration(color: Colors.amber),
              //             child: Text(
              //               'text $i',
              //               style: const TextStyle(fontSize: 16.0),
              //             ));
              //       },
              //     );
              //   }).toList(),
              // )
            ],
          ),
        ));
  }
}
