import 'package:flutter/material.dart';

class GeeksLoading extends StatelessWidget {
  const GeeksLoading({
    super.key,
    this.widget,
  });
  final Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: widget ?? const CircularProgressIndicator(),
    );
  }
}
