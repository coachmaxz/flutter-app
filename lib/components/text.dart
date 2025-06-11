import 'package:flutter/material.dart';

class P1 extends StatelessWidget {
  
  final String? text;

  final double? size;
  final Color? color;

  final String? align; // left, right, center

  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const P1({ 
    super.key, 
    required this.text,
    this.size = 20,
    this.color = const Color(0xFF3D3D3D),
    this.align = 'left',
    this.margin = const EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
    this.padding = const EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      child: Text(
        text ?? '',
        style: TextStyle(
          fontSize: size,
          color: color, 
          height: 1.2,
          fontWeight: FontWeight.w400,
          fontFamily: 'FC_Iconic'
        ),
        textAlign: (
          align == 'center' ? 
          TextAlign.center : 
          (
            align == 'right' ?
            TextAlign.right : 
            TextAlign.left
          )
        ),
        softWrap: true,
        overflow: TextOverflow.visible,
      ),
    );
  }

}

class H1 extends StatelessWidget {
  
  final String? text;

  final double? size;
  final Color? color;

  final String? align; // left, right, center

  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const H1({ 
    super.key, 
    required this.text,
    this.size = 20,
    this.color = const Color(0xFF3D3D3D),
    this.align = 'left',
    this.margin = const EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
    this.padding = const EdgeInsets.only(top: 0.0, bottom: 0.0, left: 0.0, right: 0.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      child: Text(
        text ?? '',
        style: TextStyle(
          fontSize: size,
          color: color, 
          height: 1.5,
          fontWeight: FontWeight.w800,
          fontFamily: 'FC_Iconic'
        ),
        textAlign: (
          align == 'center' ? 
          TextAlign.center : 
          (
            align == 'right' ?
            TextAlign.right : 
            TextAlign.left
          )
        ),
        softWrap: true,
        overflow: TextOverflow.visible,
      ),
    );
  }

}