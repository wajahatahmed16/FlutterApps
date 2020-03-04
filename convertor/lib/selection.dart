import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ConvertorMenu extends StatelessWidget {
  final List mitems = const [
    ["Temperature", MdiIcons.thermometer,1],
    ["Distance",MdiIcons.tapeMeasure,2],
    ["Frequency",MdiIcons.wave,3],
    ["Storage",MdiIcons.harddisk,4],
    ["Speed",MdiIcons.speedometer,5]
  ];
  final Function select;
  final BuildContext contextt;
  ConvertorMenu(this.select,this.contextt);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.blueGrey[400].withOpacity(0),
      child: ListView(
          children: mitems
              .map((item) => InkWell(
                    onTap: () {select(item[2],contextt);},
                    child: Container(
                      margin: EdgeInsets.only(top: 0.4),
                      padding: EdgeInsets.all(35.8),
                      color: Colors.blueGrey[800].withOpacity(0.5),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Icon(
                              item[1],
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              item[0],
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList()),
    );
  }
}
