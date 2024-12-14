import 'package:flutter/material.dart';

class FaqList extends StatelessWidget {
  final List<String> faqQuestions;
  const FaqList({Key? key, required this.faqQuestions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: faqQuestions.length,
      separatorBuilder: (context, index) => const SizedBox(height: 19),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  faqQuestions[index],
                  style: const TextStyle(
                    color: Color(0xFF093030),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 26,
                color: Color(0xFF093030),
              ),
            ],
          ),
        );
      },
    );
  }
}
