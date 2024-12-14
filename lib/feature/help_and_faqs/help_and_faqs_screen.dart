import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/constant/app_colors.dart';
import '../common/presentation/widget/child_app_bar.dart';
import 'faq_list.dart';

class HelpAndFaqsScreen extends ConsumerStatefulWidget {
  const HelpAndFaqsScreen({Key? key}) : super(key: key);

  @override
  _HelpAndFaqsScreenState createState() => _HelpAndFaqsScreenState();
}

class _HelpAndFaqsScreenState extends ConsumerState<HelpAndFaqsScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<String> filteredFaqQuestions = [
    'How to use FinWise?',
    'How much does it cost to use FinWise?',
    'How to contact support?',
    'How can I reset my password if I forget it?',
    'Are there any privacy or data security measures in place?',
    'Can I customize settings within the application?',
    'How can I delete my account?',
    'How do I access my expense history?',
  ];

  void _filterFaqList(String query) {
    final allQuestions = [
      'How to use FinWise?',
      'How much does it cost to use FinWise?',
      'How to contact support?',
      'How can I reset my password if I forget it?',
      'Are there any privacy or data security measures in place?',
      'Can I customize settings within the application?',
      'How can I delete my account?',
      'How do I access my expense history?',
    ];

    setState(() {
      if (query.isEmpty) {
        setState(() {
          filteredFaqQuestions = List.from(allQuestions);
        });
      } else {
        filteredFaqQuestions = allQuestions.where((question) {
          List<String> searchTerms = query.split(" ");
          for (String term in searchTerms) {
            if (!question.toLowerCase().contains(term.toLowerCase())) {
              return false;
            }
          }
          return true;
        }).toList();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      _filterFaqList(_searchController.text);
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: const ChildAppBar(title: "Help & FAQs"),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF1FFF3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  ),
                ),
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'How Can We Help You?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF093030),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SearchBar(controller: _searchController),
                    const SizedBox(height: 20),
                    FaqList(faqQuestions: filteredFaqQuestions),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final TextEditingController controller;

  const SearchBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Search FAQs...',
        filled: true,
        fillColor: Colors.grey[300],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        prefixIcon: const Icon(Icons.search, color: Colors.grey),
      ),
    );
  }
}
