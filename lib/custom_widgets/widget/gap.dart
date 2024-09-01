import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';

class GeeksGP extends StatelessWidget {
  const GeeksGP._(this.widget, {Key? key}) : super(key: key);

  /// This is the Gap from gap widget.
  factory GeeksGP.gp(size) => GeeksGP._(Gap(size));

  /// This is the Gap from SizedBox widget.
  factory GeeksGP.sBox({double? width, double? height}) =>
      GeeksGP._(SizedBox(height: height, width: height));

  factory GeeksGP.g2() => const GeeksGP._(Gap(2));
  factory GeeksGP.g4() => const GeeksGP._(Gap(4));
  factory GeeksGP.g3() => const GeeksGP._(Gap(3));
  factory GeeksGP.g1() => const GeeksGP._(Gap(1));
  factory GeeksGP.g8() => const GeeksGP._(Gap(8));
  factory GeeksGP.g16() => const GeeksGP._(Gap(16));
  factory GeeksGP.g24() => const GeeksGP._(Gap(24));
  factory GeeksGP.g32() => const GeeksGP._(Gap(32));
  factory GeeksGP.g40() => const GeeksGP._(Gap(40));
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return widget;
  }
}
