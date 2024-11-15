import 'package:clocktrain/presentation/widgets/atoms/app_card.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class TitleAndCard extends StatelessWidget {
  const TitleAndCard(
      {super.key,
      required this.title,
      this.childCard,
      this.paddingCard,
      this.heightCard,
      this.widthCard});

  final String title;
  final Widget? childCard;
  final EdgeInsets? paddingCard;
  final double? heightCard;
  final double? widthCard;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: context.textTheme.titleLarge,
            ),
          ],
        ),
        AppCard(
          height: heightCard,
          width: widthCard,
          padding: paddingCard,
          child: childCard,
        ),
      ],
    );
  }
}
