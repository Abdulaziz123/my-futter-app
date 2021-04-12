import 'package:flutter/material.dart';

class UiParts extends StatelessWidget {
  final Color colors;
  final Function onPress;
  final Widget cardChild;
  final Image images;

  UiParts({@required this.colors, this.images, this.onPress, this.cardChild, Image child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 200,
        width: 200,
        child: images,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
