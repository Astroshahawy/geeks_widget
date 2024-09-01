import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GeeksSvgImage extends StatelessWidget {
  const GeeksSvgImage._({
    required this.child,
  });

  /// This is the SvgImage from assets widget.
  factory GeeksSvgImage.fromAsset(String svg,
      {BoxFit fit = BoxFit.cover,
      Color? color,
      double? width,
      double? height,
      Widget Function(BuildContext)? placeholderBuilder}) {
    return GeeksSvgImage._(
      child: SvgPicture.asset(
        svg,
        fit: fit,
        color: color,
        height: height,
        width: width,
        placeholderBuilder: placeholderBuilder,
      ),
    );
  }

  /// This is the SvgImage from network widget.
  factory GeeksSvgImage.fromNetwork(String svgUrl,
      {BoxFit fit = BoxFit.cover,
      Color? color,
      double? width,
      double? height,
      Widget Function(BuildContext)? placeholderBuilder}) {
    return GeeksSvgImage._(
      child: SvgPicture.network(
        svgUrl,
        fit: fit,
        color: color,
        height: height,
        width: width,
        placeholderBuilder: placeholderBuilder,
      ),
    );
  }
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
