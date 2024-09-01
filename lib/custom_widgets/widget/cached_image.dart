import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GeeksCachedImage extends StatelessWidget {
  const GeeksCachedImage(
    this.imageUrl, {
    super.key,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
  });
  final String imageUrl;
  final double? height, width;
  final BoxFit fit;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: imageUrl,
      fit: fit,
      alignment: alignment,
      errorWidget: (BuildContext context, String url, dynamic error) =>
          Image.network(
        'https://fratellidiamanti.com/ar/wp-content/themes/fratelli/img/notfound.png',
      ),
    );
  }
}
