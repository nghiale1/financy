import 'package:flutter/material.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 640) {
          return const SizedBox.shrink();
        }
        return Padding(
          padding: const EdgeInsets.only(top: 162),
          child: Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/988590aa29aa4fd416cf74b1e9c09c9ceb19b5024c3a4e5c441ebb6a6cbb2b1c?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
            width: double.infinity,
            fit: BoxFit.contain,
            semanticLabel: 'Decorative image',
            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) {
                return child;
              }
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
            errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
              return const Text('Failed to load image');
            },
          ),
        );
      },
    );
  }
}