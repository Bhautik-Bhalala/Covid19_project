import 'package:flutter/material.dart';
import 'package:covid19/core/consts.dart';

class Reusablecard extends StatefulWidget {
  final Widget child;
  Reusablecard({Key key, @required this.child}) : super(key: key);
  @override
  _ReusablecardState createState() => _ReusablecardState();
}

class _ReusablecardState extends State<Reusablecard> {
  @override
  Widget build(BuildContext context) {
    return Column(
//      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(2.0),
          color: AppColors.backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: widget.child,
            decoration: BoxDecoration(
              color: Color(0xFFa29bfe),
              border: Border.all(color: Colors.black12,),
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
//              boxShadow: [
//                BoxShadow(
//                  color: Colors.red,
//                  offset: Offset(10.0,10.0),
//                )
//              ]
            ),
          ),
        )
      ],
    );
  }
}
