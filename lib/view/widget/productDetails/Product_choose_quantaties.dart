import 'package:flutter/material.dart';

class ProductChooseQuantaties extends StatelessWidget {
  const ProductChooseQuantaties({
    super.key,
    required this.onAdd,
    required this.onRemove,
    required this.text,
  });
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onAdd,
          icon: Icon(Icons.remove_circle_outline, size: 35),
        ),
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 44,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Text(text, style: TextStyle(fontSize: 25)),
        ),
        IconButton(
          onPressed: onRemove,
          icon: Icon(Icons.add_circle_outline, size: 35),
        ),
      ],
    );
  }
}
