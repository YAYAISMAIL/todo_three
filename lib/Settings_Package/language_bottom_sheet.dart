import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.075),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('data'), Icon(Icons.check)],
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text('data'), Icon(Icons.check)],
    );
  }

  Widget getUnelectedItem() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text('data')],
    );
  }
}
