import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  // final _dateController = TextEditingController();
  // final _categoryController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          TextField(
            controller: _amountController,
            keyboardType: const TextInputType.numberWithOptions(),
            decoration: const InputDecoration(
              label: Text('Amount'),
              prefixText: '\$ ',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancel')),
              ElevatedButton(
                onPressed: () {
                  print(
                    'Title: ${_titleController.text}, Amount: ${_amountController.text}',
                  );
                },
                child: const Text('Save Expense'),
              ),
              // const SizedBox(width: 16),
            ],
          ),
        ],
      ),
    );
  }
}
