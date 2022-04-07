import 'package:flutter/material.dart';
import 'package:vinculacion/widget/container_decoration.dart';

class TrabajaScroll extends StatelessWidget {
  const TrabajaScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            ContainerDecoration(),
            ContainerDecoration2(),
            ContainerDecoration(),
            ContainerDecoration(),
            ContainerDecoration(),
          ],
        ));
  }
}
