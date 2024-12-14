import 'package:flutter/material.dart';

import '../../core/constant/app_colors.dart';

class Content extends StatefulWidget {
  const Content({Key? key}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 41),
      padding: const EdgeInsets.fromLTRB(37, 16, 37, 0),
      decoration: const BoxDecoration(
        color: Color(0xFFF1FFF3),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(70),
          topRight: Radius.circular(70),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Est fugiat assumenda aut reprehenderit',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              height: 1.53,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Lorem ipsum dolor sit amet. Et odio officia aut voluptate internos est omnis vitae ut architecto sunt non tenetur fuga ut provident vero. Quo aspernatur facere et consectetur ipsum et facere corrupti est asperiores facere. Est fugiat assumenda aut reprehenderit voluptatem sed.',
            style: TextStyle(fontSize: 13, height: 1.15),
          ),
          const SizedBox(height: 16),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1. Ea voluptates omnis aut sequi sequi.'),
              Text(
                  '2. Est dolore quae in aliquid ducimus et autem repellendus.'),
              Text('3. Aut ipsum Quis qui porro quasi aut minus placeat!'),
              Text('4. Sit consequatur neque ab vitae facere.'),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Aut quidem accusantium nam alias autem eum officiis placeat et omnis autem id officiis perspiciatis qui corrupti officia eum aliquam provident. Eum voluptas error et optio dolorum cum molestiae nobis et odit molestiae quo magnam impedit sed fugiat nihil non nihil vitae.',
            style: TextStyle(fontSize: 13, height: 1.15),
          ),
          const SizedBox(height: 16),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('• Aut fuga sequi eum voluptatibus provident.'),
              Text(
                  '• Eos consequuntur voluptas vel amet eaque aut dignissimos velit.'),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Vel exercitationem quam vel eligendi rerum At harum obcaecati et nostrum beatae? Ea accusantium dolores qui rerum aliquam est perferendis mollitia et ipsum ipsa qui enim autem At corporis sunt. Aut odit quisquam est reprehenderit itaque aut accusantium dolor qui neque repellat.',
            style: TextStyle(fontSize: 13, height: 1.15),
          ),
          const SizedBox(height: 26),
          const Text(
            'Read the terms and conditions in more detail at',
            style: TextStyle(fontSize: 13, height: 1.15),
          ),
          const SizedBox(height: 4),
          InkWell(
            onTap: () {
              // Add link functionality here
            },
            child: const Text(
              'www.finwiseapp.de',
              style: TextStyle(
                color: Color(0xFF3299FF),
                fontSize: 14,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Checkbox(
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value ?? false;
                  });
                },
              ),
              const SizedBox(width: 9),
              const Expanded(
                child: Text(
                  'I accept all the terms and conditions',
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: const Color(0xFF093030),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 66, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Accept'),
            ),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
