import 'package:financy/feature/common/presentation/widget/child_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/constant/app_colors.dart';
import '../common/presentation/widget/custom_button.dart';
import 'custom_input_field.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({Key? key}) : super(key: key);

  @override
  _AddExpenseScreenState createState() => _AddExpenseScreenState();
}

class _AddExpenseScreenState extends State<AddExpenseScreen> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _categoryController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  final List<String> categories = [
    'Groceries',
    'Rent',
    'Transport',
    'Entertainment',
    'Utilities'
  ];

  String? selectedCategory;

  @override
  void initState() {
    super.initState();
    _dateController.text = DateFormat('dd/MM/yyyy').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: const ChildAppBar(title: 'Add Expenses'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 51),
              padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 33),
              decoration: const BoxDecoration(
                color: Color(0xFFF1FFF3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomInputField(
                      label: 'Date',
                      controller: _dateController,
                      readOnly: true,
                      suffixIcon: Icons.calendar_today,
                      onTap: () async {
                        final DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2025),
                        );
                        if (picked != null) {
                          setState(() {
                            _dateController.text =
                                DateFormat('dd/MM/yyyy').format(picked);
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 28),
                    CustomInputField(
                      label: 'Category',
                      controller: _categoryController,
                      hintText: 'Select the category',
                      suffixIcon: Icons.arrow_drop_down,
                      onTap: () async {
                        final String? selected =
                            await showCategoryPicker(context, categories);
                        if (selected != null) {
                          setState(() {
                            selectedCategory = selected;
                            _categoryController.text = selectedCategory!;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 28),
                    CustomInputField(
                      label: 'Amount',
                      controller: _amountController,
                      keyboardType: TextInputType.number,
                      prefixText: '\$',
                    ),
                    const SizedBox(height: 30),
                    CustomInputField(
                      label: 'Expense Title',
                      controller: _titleController,
                    ),
                    const SizedBox(height: 39),
                    CustomInputField(
                      label: 'Message',
                      controller: _messageController,
                      maxLines: 4,
                    ),
                    const SizedBox(height: 36),
                    Center(
                      child: CustomButton(
                        onPressed: () {
                          // TODO: Implement save functionality
                        },
                        text: 'Save',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _dateController.dispose();
    _categoryController.dispose();
    _amountController.dispose();
    _titleController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<String?> showCategoryPicker(
      BuildContext context, List<String> categories) async {
    return await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Category'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: categories.map((category) {
                return ListTile(
                  title: Text(category),
                  onTap: () {
                    Navigator.pop(context, category);
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
