import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png",
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                "اذاعة القران الكريم",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.fast_rewind,
                        color: Color(0xFFB7935F),
                        size: 25,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.play_arrow,
                        color: Color(0xFFB7935F),
                        size: 70,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.fast_forward,
                        color: Color(0xFFB7935F),
                        size: 25,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
