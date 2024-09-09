import 'package:flutter/cupertino.dart';

class WidthWrapper extends StatelessWidget{
  final Widget child;
  final double maxWidth;

  const WidthWrapper({
    required this.child,
    this.maxWidth = 800,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
          constraints: BoxConstraints.expand(width: this.maxWidth),
          child: child,
      ),
    );
  }

}