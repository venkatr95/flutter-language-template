
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_language_template/language/app_localizations.dart';
import 'package:flutter_language_template/language/language_controller.dart';

import 'language/language_helper.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Get.put(LanguageController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter ${AppLocalization.of(context)
                  .getTranslatedValue("home_page")}",
          maxLines: 3,
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: LanguageHelper.languageList()
            .map(
              (e) => Padding(
            padding: const EdgeInsets.symmetric(),
            child: ElevatedButton(
              onPressed: () {
                Get.find<LanguageController>()
                    .updateLocale(LanguageHelper.changeLanguage(e, context));
              },
              child: Text("${e.name} ${e.flag}"),
            ),
          ),
        )
            .toList(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          Text(
            AppLocalization.of(context).getTranslatedValue("personal_information").toString(),
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            AppLocalization.of(context).getTranslatedValue("name").toString(),
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}