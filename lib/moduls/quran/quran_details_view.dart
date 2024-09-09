import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/moduls/quran/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "quranDetails";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as SuraData;
    loadQuranData(data.suraNumber);
    if (versesList.isEmpty) loadQuranData(data.suraNumber);
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سوره ${data.suraName}",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(width: 15),
                  Icon(Icons.play_circle_fill_rounded),
                ],
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "{${index + 1}} ${versesList[index]}}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  itemCount: versesList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<String> versesList = [];

  Future<void> loadQuranData(String SuraNumber) async {
    String content =
        await rootBundle.loadString("assets/files/$SuraNumber.txt");
    versesList = content.split("\n");
    setState(() {});
  }
}
