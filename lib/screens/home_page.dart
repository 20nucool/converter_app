import 'package:converter_app/constants.dart';
import 'package:converter_app/screens/converter_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var keyList = map1.entries.toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Converter App',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 17, 17, 17)),
        ),
        leading: const Icon(Icons.dashboard_outlined),
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: map1.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: InkWell(
                  onTap: () {
                    // print(keyList[index].value);
                    Get.to(() => ConverterScreen(
                          cat: keyList[index].key,
                          cat2: keyList[index].value as List,

                          // cat2 = map1.keys[index];
                        ));
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => ConverterScreen(
                    //               cat: categories[index],
                    //             )));
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 231, 231, 231),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 146, 146, 146),
                          blurRadius: 16,
                          spreadRadius: 2,
                          offset: Offset(2, 5),
                        ),
                        // border: Boxborder.all(color: Colors.black),
                        // borderRadius: BorderRadius.circular(12)
                      ],
                    ),
                    width: size.width - 20,
                    alignment: Alignment.center,
                    height: 75,
                    child: Text(
                      keyList[index].key,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 27, 75, 83)),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
