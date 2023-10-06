import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  ActionCard({super.key, required this.action, required this.image, required this.onTap});

  String action;
  String image;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.grey.shade400),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(width: 50, height: 50, child: Image(image: AssetImage(image),)),
              ),
            ),
          ),
          Text(
            action,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
