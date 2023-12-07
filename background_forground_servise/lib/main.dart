import 'package:background_forground_servise/back_services.dart';
import 'package:background_forground_servise/home_page.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();

  var status = await Permission.notification.status;
  if(status.isDenied){
    Permission.notification.request();
  }else{
    print("Permission.notification ");
  }

  // await Permission.notification.isDenied.then((value) {
  //   if(value){
  //     Permission.notification.request();
  //     print("value$value");
  //   }
  // });
  await initializeService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

