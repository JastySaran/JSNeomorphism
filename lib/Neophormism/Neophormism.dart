import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeomorphismContainer<T extends Widget> extends StatelessWidget {
  final double? containerWidth;
  final T child;
  final bool inset;
  final Color? color;
  final double? containerHeight;


  const NeomorphismContainer({
    super.key,
    required this.containerWidth,
    required this.child,
    required this.inset,
    required this.color,
    required this.containerHeight
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth ?? MediaQuery.of(context).size.width,
      height: containerHeight,
      decoration: BoxDecoration(
        color: color ?? const Color.fromRGBO(241, 241, 241, 1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFBEBEBE),
            offset: const Offset(7, 7),
            blurRadius: 10,
            spreadRadius: 0.5,
            inset: inset,
          ),
          BoxShadow(
            color: Colors.white,
            offset: const Offset(-7, -7),
            blurRadius: 10,
            spreadRadius: 0.5,
            inset: inset,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
      child: child,
    );
  }
}

