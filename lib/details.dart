import 'package:flutter/material.dart';
import 'package:list_view/model/model.dart';

class SecondPage extends StatefulWidget {
  //const SecondPage({ Key? key }) : super(key: key);
  final Model? model;
  final String? name;
  SecondPage({this.model, this.name});
  @override
  _SecondPageState createState() => _SecondPageState();
}
class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: widget.model!,
              child: Image.network("${widget.model!.image}"),
            ),
            // Image.network("${widget.model!.image}"),
            Text("${widget.model!.name}")
          ],
        ),
      ),
    );
  }
}
