import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskgdsc/data.dart';
import 'package:taskgdsc/widget/card_widget.dart';
import 'package:taskgdsc/widget/textwidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<Data>(
          create: (BuildContext context) => Data(), child: Home()),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(233, 234, 236, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Flutter Demo',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: SizedBox(),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(0, 0, 0, 1),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(233, 234, 236, 1),
            borderRadius: BorderRadius.only(topRight: Radius.circular(90)),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CardWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(180),
                          topLeft: Radius.circular(180)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(10, 10),
                          blurRadius: 20,
                          spreadRadius: 20,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50,right: 50,),
                      child: Center(child: TextWidget()),
                    ),
                  ),
                ),
                ],
            ),
          ),
        ),
      ),
    );
  }
}
