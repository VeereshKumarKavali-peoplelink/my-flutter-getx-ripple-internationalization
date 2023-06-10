import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_flutter_getx_ripple_internationalization/messages.dart';
import 'package:my_flutter_getx_ripple_internationalization/my_controller.dart';

void main() =>
  runApp(MyApp());


class MyApp extends StatelessWidget {
  MyApp({super.key});

  MyController myController = Get.put(MyController());
  

  
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(), //your translations
      locale: const Locale("en", "US"),  //default locale, //to get device locale Get.deviceLocale
      fallbackLocale: const Locale("en", "US"), //fallback locale , if wrong locale is found
      title: 'Getx Internationalization',
      theme: ThemeData(primarySwatch: Colors.green,),
      home: Scaffold(
        appBar: AppBar(title: const Text("Getx Internationalization")),
        body: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            Text('hello'.tr, style: const TextStyle(fontSize: 25, color: Colors.green)),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: (){myController.changeLanguage("hi", "IN");}, child: const Text("Hindi")),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: (){myController.changeLanguage("fr", "FR");}, child: const Text("French")),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: (){myController.changeLanguage("en", "US");}, child: const Text("English"))
          ]
        ))

        
      )
    );
  }
}
