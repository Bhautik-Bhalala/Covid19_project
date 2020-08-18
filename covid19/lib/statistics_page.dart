import 'dart:convert';
import 'package:covid19/Gujarat.dart';
import 'package:covid19/core/consts.dart';
import 'package:covid19/core/flutter_icons.dart';
import 'package:covid19/appbar_widget.dart';
import 'package:covid19/temp.dart';
import 'package:flutter/material.dart';
import 'package:covid19/chart_wid.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:covid19/indiastats.dart';

class StatisticPage extends StatefulWidget {
  @override
  _StatisticPageState createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {
//  List data;
  Map<String, dynamic> data = {};
  String a="LOADING",b="LOADING",c="LOADING",d="LOADING",e ="LOADING";
  void initState() {
    super.initState();
     getData();
  }

  Future<String> getData() async{
    var response = await http.get(
      Uri.encodeFull("https://corona-virus-stats.herokuapp.com/api/v1/cases/general-stats"),

      headers: {
        "Accept":"application/json"
      }
  );
    setState(() {
    data =  jsonDecode(response.body);
    //return data;
    a = data["data"]["last_update"].toString();
    b =data["data"]["total_cases"].toString();
    c = data["data"]["recovery_cases"].toString();
    d = data["data"]["death_cases"].toString();
    e = data["data"]["currently_infected"].toString();
    });


  }

  @override
  Widget build(BuildContext context) {
    if (data == null ){
      getData();
    }
    else{
      CircularProgressIndicator();
    }
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            child: FutureBuilder(
              future: getData(),
              builder: (BuildContext context ,AsyncSnapshot snapshot){
                if(snapshot.hasData){
                  return Text(snapshot.data);
                }
                else if(snapshot.hasError){
                  return Text("${snapshot.error}");
                }
                return CircularProgressIndicator();
              },
            ),
          ),
          Container(
            height: 275,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            padding: EdgeInsets.only(top: 25),
            child: Image.asset("assets/images/virus2.png"),
          ),
          Container(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppBarWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "WORLD UPDATES",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                _buildStatistic(),
//                Padding(
//                  padding: EdgeInsets.all(16),
//                  child: Row(
//                    children: <Widget>[
//                      Expanded(
//                        child: _buildGender(FlutterIcons.male,
//                            Colors.orangeAccent, "MALE", "59.5%"),
//                      ),
//                      SizedBox(width: 16),
//                      Expanded(
//                        child: _buildGender(FlutterIcons.female,
//                            Colors.pinkAccent, "FEMALE", "40.5%"),
//                      ),
//                    ],
//                  ),
//                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: RichText(
                    text: TextSpan(
                      text: "Global Cases of ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black87,
                      ),
                      children: [
                        TextSpan(
                          text: "COVID 19",
                          style: TextStyle(
                            color: AppColors.mainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    height: 170,
                    child: Center(child: Image.asset("assets/images/map.png")),
                  ),
                ),
//                Expanded(
//                  child: RaisedButton(
//                    color: Colors.blue,
//                    onPressed: getData,
//                    child: Text(
//                      "testing get data ",
//                      style: TextStyle(color: Colors.white),
//                    ),
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.all(
//                        Radius.circular(50),
//                      ),
//                    ),
//                    padding: EdgeInsets.symmetric(vertical: 16),
//                  ),
//                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => GujaratStats(),
                      ),
                    );
                  },
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                      border: Border.all(color: Colors.white),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 1,
                        )
                      ],
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset("assets/images/map.png"),
                        SizedBox(width: 25),
                        RichText(
                          text: TextSpan(
                            text: "CASES\n",
                            style: TextStyle(
                              color: AppColors.mainColor,
                              fontWeight: FontWeight.bold,
                              height: 1.3,
                            ),
                            children: [
                              TextSpan(
                                text: "Overview india\n",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),

                            ],
                          ),
                        ),
                        Expanded(child: SizedBox()),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: null,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    ),
    );
  }

  Widget _buildGender(IconData icon, Color color, String title, String value) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                icon,
                size: 60,
                color: color,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Confirmed\nCase",
                    style: TextStyle(
                      color: Colors.black38,
                      height: 1.5,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            value,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          )
        ],
      ),
    );
  }
  Widget  _buildStatistic() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(color: Colors.white),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(24),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildStatisticItem(Colors.black, "Last Updated", a),
                _buildStatisticItem(
                    Colors.blueAccent, "Confirmed", b),
                _buildStatisticItem(
                    Colors.yellowAccent, "Recovered", c),
                _buildStatisticItem(Colors.redAccent, "Deaths", d),
                _buildStatisticItem(Colors.green,"Currently Infected" , e)
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticItem(Color color, String title, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(
          FlutterIcons.label,
          size: 50,
          color: color,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
            SizedBox(height: 5),
            Text(value),
          ],
        ),
      ],
    );
  }
}
