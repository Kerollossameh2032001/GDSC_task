import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskgdsc/data.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Enter The Text ',
        labelStyle: const TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 30,
            color: Color.fromRGBO(233, 234, 236, 1)),
        hintText: 'The Text',
        hintStyle: const TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 15,
          color: Color.fromRGBO(233, 234, 236, 0.8),
        ),
        prefixIcon: IconButton(
            onPressed: () {
              Provider.of<Data>(context,listen: false).AddTask();
            },
            icon: const Icon(
              Icons.add_circle,
              size: 30,
              color: Color.fromRGBO(233, 234, 236, 1),
            )),
        filled: true,
        fillColor: Colors.transparent,
      ),
      style: const TextStyle(
        color: Colors.blueAccent,
      ),
      controller: Provider.of<Data>(context, listen: false).Controller,
      keyboardType: TextInputType.text,
    );
  }
}
