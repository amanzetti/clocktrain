import 'package:flutter/material.dart';

class BaseSkeleton extends StatelessWidget {
  final double width;
  final double height;

  const BaseSkeleton(
      {super.key, this.width = double.infinity, this.height = double.infinity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
