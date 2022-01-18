import 'package:flutter/material.dart';
import 'package:vaccineanalyzer/models/center.dart';
import 'package:vaccineanalyzer/widgets/buttons.dart';
import 'package:vaccineanalyzer/widgets/images.dart';
import 'package:vaccineanalyzer/widgets/inputwidgets.dart';

import '../../variables.dart';

class AddCenter extends StatelessWidget {
  const AddCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: const Text(
            'Add Vaccination Center',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: CenterBody());
  }
}

class CenterBody extends StatefulWidget {
  const CenterBody({
    Key? key,
  }) : super(key: key);

  @override
  State<CenterBody> createState() => _CenterBodyState();
}

class _CenterBodyState extends State<CenterBody> {
  VacCenter cntr = VacCenter.simple();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ImageBanner('center'),
        FieldWithHeading(
            title: 'Center Name',
            onChanged: (str) {
              cntr.name = str;
            }),
        FieldWithHeading(
            title: 'Place',
            onChanged: (str) {
              cntr.name = str;
            }),
        ColoredDropDown(
            title: 'District',
            vals: districts,
            onChanged: (str) {
              cntr.district = str ?? 'Eranakulam';
            }),
        CustomButton(
          onpressed: () {
            Navigator.popUntil(context, (route) => route.isFirst);
          },
        )
      ],
    );
  }
}
