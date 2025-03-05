import 'package:flutter/material.dart';

class NotificationBanner extends StatelessWidget {
  const NotificationBanner(
      {super.key, required this.message, required this.msgicon});

  final String message;
  final IconData msgicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 265,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 146, 69).withOpacity(0.3),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(
                msgicon,
                color: Color.fromARGB(255, 245, 146, 69),
                size: 30,
              ),
            ),
            SizedBox(
              width: 200,
              child: Text(
                message,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
