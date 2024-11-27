import 'package:flutter/material.dart';

class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      constraints: const BoxConstraints(maxWidth: 480),
      child: Column(
        children: [
          Container(
            height: 138,
            color: const Color.fromRGBO(72, 4, 182, 0.77),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 49, left: 16),
            child: Column(
              children: [
                Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/TEMP/0a4905c622ac05acaa672bf5c4f32933768273af3c8c098fa93b15f328e8444b?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                  fit: BoxFit.contain,
                  semanticLabel: 'First image',
                ),
                const SizedBox(height: 23),
                Image.network(
                  'https://cdn.builder.io/api/v1/image/assets/TEMP/0ac7bc1bc99ce5800fccc3de858381f5a93129ff2a7002957a7d9e6d8dc03b46?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
                  width: 323,
                  fit: BoxFit.contain,
                  semanticLabel: 'Second image',
                ),
              ],
            ),
          ),
          const SizedBox(height: 57),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/b4ac948f448f7cc59506d22d4f8c1414214efc2257e68da3dbda9694496f695e?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
            width: 351,
            fit: BoxFit.contain,
            semanticLabel: 'Third image',
          ),
          const SizedBox(height: 54),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.network(
              'https://cdn.builder.io/api/v1/image/assets/TEMP/5140744fc8fa6b9e57f7a3b6c74587b5465bf90f97d6c7320919df9f0be8bc72?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
              width: 369,
              fit: BoxFit.contain,
              semanticLabel: 'Fourth image',
            ),
          ),
          const SizedBox(height: 10),
          Image.network(
            'https://cdn.builder.io/api/v1/image/assets/TEMP/3879744cd3e3b516024dc371b2025470013c528c08eb6fafcc37f7877eedf6c6?placeholderIfAbsent=true&apiKey=3c1d40c3645440a18a1b315bfc6e4772',
            width: double.infinity,
            fit: BoxFit.contain,
            semanticLabel: 'Fifth image',
          ),
        ],
      ),
    );
  }
}