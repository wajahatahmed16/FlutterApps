import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import './selected.dart';
class MBody extends StatelessWidget {
  final List bitems=const [
    ["Temperature", MdiIcons.thermometer],
    ["Distance",MdiIcons.tapeMeasure],
    ["Frequency",MdiIcons.wave],
    ["Storage",MdiIcons.harddisk],
    ["Speed",MdiIcons.speedometer]
  ];
  final int selection;
  MBody(this.selection);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        leading: Icon(bitems[selection-1][1]),
        title: Text(bitems[selection-1][0]),
      ),
      body: SelectedBody(selection-1),
    );
  }
}
