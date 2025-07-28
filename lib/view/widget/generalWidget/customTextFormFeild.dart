import 'package:ecommerce_app/core/constant/Color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.MaxLine = 1,
    //this.onsave,
    // this.onChanged,
    required this.labelText,
    required this.icon,
    required this.controller,
    required this.validator,
  });
  final String hintText;
  final String labelText;
  final int MaxLine;
  final IconData icon;
  // final void Function(String?)? onsave;
  //final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: TextFormField(
        // onChanged: onChanged,
        // onSaved: onsave,
        controller: controller,
        cursorColor: AppColor.grey,
        maxLines: MaxLine,
        validator: validator,
        // validator: (val) {
        //   if (val?.isEmpty ?? true) {
        //     return "is feild are required";
        //   } else {
        //     return null;
        //   }
        // },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          suffixIcon: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(icon),
          ),
          hintText: hintText,
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(fontSize: 15, color: Colors.grey[600]),
          hintStyle: TextStyle(color: AppColor.grey, fontSize: 14),
          border: buildBorder(),
          enabledBorder: buildBorder(AppColor.grey),
          // focusedBorder: buildBorder(AppColor.grey),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
