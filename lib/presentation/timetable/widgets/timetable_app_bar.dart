import 'package:flutter/material.dart';
import 'package:nocia/presentation/timetable/add_lecture_page.dart';

class TimetableAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 30,
      icon: Icon(Icons.add),
      onPressed: () {
        Navigator.push(context, PageRouteBuilder(
          opaque: false,
          pageBuilder: (context, animation, secondaryAnimation) => AddLecturePage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeUpwardsPageTransitionsBuilder()
                .buildTransitions(
                MaterialPageRoute(builder: (context) => AddLecturePage()),
                context,
                animation,
                secondaryAnimation,
                child
            );
          },
        ));
      }
    );
  }
}