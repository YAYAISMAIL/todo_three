import 'package:flutter/material.dart';
import 'package:todo_three/Settings_Package/app_mod_bottom_sheet.dart';
import 'package:todo_three/Settings_Package/language_bottom_sheet.dart';

class SetDropDown extends StatefulWidget {
  String switchBottomSheetCase = '';
  String dropDownInit;

  SetDropDown({super.key, required this.dropDownInit});

  @override
  State<SetDropDown> createState() => _SetDropDownState();
}

class _SetDropDownState extends State<SetDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: Colors.black),
          borderRadius:
              BorderRadius.circular(MediaQuery.of(context).size.width * 0.02)),
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
        child: InkWell(
          onTap: () {
            showMainBottomSheet(switchBottomSheetCase: widget.dropDownInit);
          },
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.dropDownInit, style: Theme.of(context).textTheme.bodySmall),
                const Icon(Icons.arrow_drop_down)
              ]),
        ),
      ),
    );
  }

  void showMainBottomSheet({required String switchBottomSheetCase}) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          if (switchBottomSheetCase == "English") {
            return LanguageBottomSheet();
          }
          return AppModeBottomSheet();
        });
  }
}
