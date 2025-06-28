import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class category extends StatelessWidget {
  category({super.key, this.text, this.color, this.onTap});

  String? text;
  Color? color;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2 - 24;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 140,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color ?? Colors.blue,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.arrow_forward_ios, color: Colors.white),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                text ?? '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
