import 'package:flutter/material.dart';

class RaisedButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool loading;
  RaisedButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.loading = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
          onPressed: ()=>null,
          title: 'Enabled Button'
        );
  }
}
