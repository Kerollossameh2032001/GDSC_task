import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskgdsc/data.dart';

class CardView extends StatelessWidget {
  final int index;

  CardView({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String Txt = Provider.of<Data>(context).data[index];
    return Column(children: [
      Align(
        alignment: Alignment.topLeft,
        child: InkWell(
          onTap: () {
            Provider.of<Data>(context, listen: false).RemoveTask(Txt);
          },
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(233, 234, 236, 1),
                borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
              ),
              child: Row(
                children: [
                  Text(
                    Txt,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      const Divider(
        color: Colors.white,
        height: 10,
        thickness: 1,
      ),
      SizedBox(
        height: 20,
      ),
    ]);
  }
}
