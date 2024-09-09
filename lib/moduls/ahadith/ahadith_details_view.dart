import 'package:flutter/material.dart';
import 'package:islamic_app/moduls/ahadith/ahadith_view.dart';

class AhadithDetailsView extends StatelessWidget {
  static const String routeName = "AhadithDetails";

  const AhadithDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as HadithData;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg3.png"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "اسلامي",
          ),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 80),
          padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 80),
          decoration: BoxDecoration(
            color: Color(0xFFbacF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                data.title,
                style: theme.textTheme.bodyMedium,
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      data.bodyContent,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  itemCount: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
