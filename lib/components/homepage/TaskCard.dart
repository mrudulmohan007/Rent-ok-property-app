import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  TaskCard(
      {super.key,
      required this.title,
      required this.description,
      required this.buttonTitle});

  String title;
  String description;
  String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            )),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Title of the task
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18.0),
                    ),
                  ),

                  ///Description of the task
                  Text(
                    description,
                    style: const TextStyle(fontSize: 14.0),
                  ),

                  ///Action button to complete the task
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                    child: const Text("Check Tenant Profile"),
                  )
                ],
              ),
            ),

            ///This widget is just a placeholder
            ///You can add your own image asset here
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Colors.green),
                child: Center(
                  child: const Text(
                    "Add own image here",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
