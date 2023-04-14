import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class AddRemoveButton extends StatefulWidget {
  const AddRemoveButton({super.key});

  @override
  State<AddRemoveButton> createState() => _AddRemoveButtonState();
}

class _AddRemoveButtonState extends State<AddRemoveButton> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(ProjectRadius.button),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: count < 1
                ? null
                : () {
                    count--;
                    setState(() {});
                  },
            icon: Icon(Icons.remove),
          ),
          Text(count.toString()),
          IconButton(
            onPressed: () {
              count++;
              setState(() {});
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
