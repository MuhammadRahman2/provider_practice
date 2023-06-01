import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_lift_working/controllers/cart_provider.dart';
import 'package:tech_lift_working/controllers/product_provider.dart';
import 'package:tech_lift_working/views/pages/task1/homee_page.dart';
import 'package:tech_lift_working/views/pages/task2/login_screen.dart';
import 'package:tech_lift_working/views/ui_task/dashbord.dart';
// import 'package:tech_lift_working/views/pages/task1/homee_page.dart';
// import 'package:tech_lift_working/task2/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
    // MultiProvider(
        // providers: [
          ChangeNotifierProvider<ProductProvider>(
              create: (_) => ProductProvider(),
              // ),
              
        // ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'TechLift Work',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: DashBord()
            // HomePage(),
            ));
  }
}
