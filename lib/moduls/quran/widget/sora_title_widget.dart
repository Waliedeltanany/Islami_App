import 'package:flutter/material.dart';
import 'package:islamic_app/moduls/quran/quran_view.dart';

class SoraTitleWidget extends StatelessWidget {
  final SuraData data;

  const SoraTitleWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            data.suraNumber,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        SizedBox(height: 35, child: VerticalDivider()),
        Expanded(
          child: Text(
            data.suraName,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
