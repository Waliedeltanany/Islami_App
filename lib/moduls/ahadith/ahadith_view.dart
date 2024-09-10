import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/moduls/ahadith/ahadith_details_view.dart';

class AhadithView extends StatefulWidget {
  AhadithView({super.key});

  @override
  State<AhadithView> createState() => _AhadithViewState();
}

class _AhadithViewState extends State<AhadithView> {
  List<HadithData> hadithDataList = [];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    if (hadithDataList.isEmpty) loadHadithData();
    return Column(
      children: [
        Image.asset(
          "assets/images/hadith_header.png",
          scale: 3,
        ),
        const Divider(),
        Text(
          "أحاديث نبويه",
          style: theme.textTheme.bodyLarge,
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
              itemCount: hadithDataList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      AhadithDetailsView.routeName,
                      arguments: hadithDataList[index],
                    );
                  },
                  child: Text(
                    hadithDataList[index].title,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium!.copyWith(height: 1.8),
                  ),
                );
              }),
        )
      ],
    );
  }

  Future<void> loadHadithData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadithDataList = content.split("#");
    for (int i = 0; i < allHadithDataList.length; i++) {
      String singleHadithData = allHadithDataList[i].trim();
      int indexLength = singleHadithData.indexOf("\n");
      String title = singleHadithData.substring(0, indexLength);
      String bodyContent = singleHadithData.substring(indexLength + 1);
      HadithData hadithData =
          HadithData(title: title, bodyContent: bodyContent);
      setState(() {});
      hadithDataList.add(hadithData);
    }
  }
}

class HadithData {
  final String title;
  final String bodyContent;

  HadithData({
    required this.title,
    required this.bodyContent,
  });
}
