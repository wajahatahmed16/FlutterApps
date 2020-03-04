import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './conversion/temperature.dart';
import './conversion/distance.dart';
import './conversion/frequency.dart';
import './conversion/storage.dart';
import './conversion/speed.dart';

class SelectedBody extends StatefulWidget {
  final int sel;
  SelectedBody(this.sel);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SelectedBody(sel);
  }
}

class _SelectedBody extends State<SelectedBody> {
  final int sel;

  final slist = [
    ["Celcius", "Farenheight"],
    ["Meter", "Centimeter", "Inches", "Kilometer", "Mile"],
    ["Hertz", "Kilohertz", "Megahertz", "Gigahertz"],
    ["Kilobytes", "Megabytes", "Gigabytes"],
    ["Kilometer/Hour", "Miles/Hour"]
  ];

  final fconversion = [temperatureC,distanceC,frequencyC,storageC,speedC];

  var sel1;
  var sel2;

  var txt1 = TextEditingController();
  var txt2 = TextEditingController();

  _SelectedBody(this.sel);
  @override
  void initState() {
    sel1 = slist[sel][0];
    sel2 = slist[sel][1];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: ListView(children: <Widget>[
      Container(
        child: Center(
          child: Text(
            "Enter Value to Change",
            style: TextStyle(fontSize: 20),
          ),
        ),
        padding: EdgeInsets.all(20.0),
      ),
      Center(
        child: DropdownButton<String>(
          items: slist[sel].map((String litem) {
            return DropdownMenuItem(
              value: litem,
              child: Text(litem),
            );
          }).toList(),
          onChanged: (String selectedItem) {
            var tsel=sel1;
            setState(() {
              sel1 = selectedItem;
            });
            txt1.text = fconversion[sel](txt1.text,tsel,sel1);
          },
          value: sel1,
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        child: TextField(
          enableInteractiveSelection: false,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Input Value", hintText: "Enter Value"),
          controller: txt1,
          onChanged: (String str) {
            txt2.text = fconversion[sel](str,sel1,sel2);
          },
        ),
      ),
      Center(
        child: DropdownButton<String>(
          items: slist[sel].map((String litem) {
            return DropdownMenuItem(
              value: litem,
              child: Text(litem),
            );
          }).toList(),
          onChanged: (String selectedItem) {
            var tsel=sel2;
            setState(() {
              sel2 = selectedItem;
            });
            txt2.text = fconversion[sel](txt2.text,tsel,sel2);
          },
          value: sel2,
        ),
      ),
      Container(
        margin: EdgeInsets.all(10.0),
        child: TextField(
          enableInteractiveSelection: false,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              labelText: "Input Value", hintText: "Enter Value"),
          controller: txt2,
          onChanged: (String str) {
            txt1.text = fconversion[sel](str,sel2,sel1);
          },
        ),
      ),
    ]));
  }
}
