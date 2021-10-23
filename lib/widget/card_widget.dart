import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskgdsc/data.dart';

import 'card_view.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black54,
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(70),
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(left: 10, right: 15, top: 20),
      height: 350,
      width: 400,
      child: ListView.builder(
        itemBuilder: (_,Index){
          return CardView(index: Index);
        },
        itemCount: Provider.of<Data>(context,listen: true).data.length,
      ),
    );
  }
}
