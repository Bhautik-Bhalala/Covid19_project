import 'package:flutter/material.dart';
import 'package:covid19/Reusablecard.dart';
import 'package:covid19/core/consts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'appbar_widget.dart';
class GujaratStats extends StatefulWidget {
  @override
  _GujaratStatsState createState() => _GujaratStatsState();
}

class _GujaratStatsState extends State<GujaratStats> {
  List data = [];
//  List<Widget> datag = new List<Widget>();
  List datag = [];
  List datac = [];
  List datad = [];
  List dataa = [];
  List datar = [];
  List datacn = [];
  List datadn = [];
  List datarn = [];

//  Map<String, dynamic> data = {};
  void initState() {
    super.initState();
    getData();
  }

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull(
            "https://api.covid19india.org/v2/state_district_wise.json"),
        headers: {"Accept": "application/json"});
//    if (response.statusCode == 200) {
//      print(response.statusCode);
//     // print(json.decode(response.body));
//    } else {
//      print(response.statusCode);
//    }
    setState(() {
      data = jsonDecode(response.body);
      for (int i = 0; i < data.length; i++) {
        if (data[i]["statecode"] == "GJ") {
          // print(data[i].toString());
          for (int j = 0; j < data[i]["districtData"].length; j++) {
            datag.add(data[i]["districtData"][j]["district"]);
          }
          for (int j = 0; j < data[i]["districtData"].length; j++) {
            datac.add(data[i]["districtData"][j]["confirmed"]);
          }
          for (int j = 0; j < data[i]["districtData"].length; j++) {
            datar.add(data[i]["districtData"][j]["recovered"]);
          }
          for (int j = 0; j < data[i]["districtData"].length; j++) {
            datad.add(data[i]["districtData"][j]["deceased"]);
          }
          for (int j = 0; j < data[i]["districtData"].length; j++) {
            dataa.add(data[i]["districtData"][j]["active"]);
          }
          for (int j = 0; j < data[i]["districtData"].length; j++) {
            datacn.add(data[i]["districtData"][j]["delta"]["confirmed"]);
          }
          for (int j = 0; j < data[i]["districtData"].length; j++) {
            datadn.add(data[i]["districtData"][j]["delta"]["deceased"]);
          }
          for (int j = 0; j < data[i]["districtData"].length; j++) {
            datarn.add(data[i]["districtData"][j]["delta"]["recovered"]);
          }
        }
      }
      print(datarn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: new Text("Gujarat Stats"),
        ),
        body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(bottom: 100),
                height: MediaQuery.of(context).size.height, // constrain height
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
//                  scrollDirection: Axis.horizontal
//                  shrinkWrap: true,
                  itemCount: datag.length,
                  separatorBuilder: (_, __) => Divider(height: 0.5,),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Reusablecard(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            text: datag[index].toString() + "\n",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
//                              fontFamily: ,
                              height: 1.3,
                            ),
                            children: [
                              TextSpan(
                                text: "Confirmed : " +
                                    datac[index].toString() +
                                    "(" +
                                    datacn[index].toString() +
                                    ")"+
                                    "\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: "Cured : " +
                                    datar[index].toString() +
                                    "(" +
                                    datarn[index].toString() +
                                    ")"+
                                    "\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: "Deaths : " +
                                    datad[index].toString() +
                                    "(" +
                                    datadn[index].toString() +
                                    ")" +
                                    "\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: "Active : " +
                                    dataa[index].toString() +
                                    "\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    );
                  },
                )
            ),
          ],
        )
        ),
      ),
    );
  }

}
