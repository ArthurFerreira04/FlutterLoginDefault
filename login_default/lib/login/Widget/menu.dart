import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String imagePath; 
  final String text;
  final VoidCallback onTap;

  const MenuItem({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Container(
          width: 40, 
          height: 40, 
          decoration: const BoxDecoration(
            color: Color(0xFF00FF00),
            shape: BoxShape.circle, 
          ),
          child: Center( 
            child: Padding(
              padding: const EdgeInsets.all(8.0), 
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover, 
              ), 
            ),
          ),
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        onTap: onTap,
        tileColor: Colors.black, 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}