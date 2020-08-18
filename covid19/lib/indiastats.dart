import 'package:flutter/material.dart';
import 'package:covid19/Reusablecard.dart';
import 'package:covid19/core/consts.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class IndianStats extends StatefulWidget {
  @override
  _IndianStatsState createState() => _IndianStatsState();
}

class _IndianStatsState extends State<IndianStats> {
//  List data = [];
  Map<String, dynamic> data = {};
  String AP = "LOADING",
      AR = "LOADING",
      AS = "LOADING",
      BR = "LOADING",
      CG = "LOADING",
      GA = "LOADING",
      GJ = "LOADING",
      HR = "LOADING",
      HP = "LOADING",
      JK = "LOADING",
      JH = "LOADING",
      KA = "LOADING",
      KL = "LOADING",
      MP = "LOADING",
      MadP = "LOADING",
      MH = "LOADING",
      MN = "LOADING",
      ML = "LOADING",
      MZ = "LOADING",
      NL = "LOADING",
      OR = "LOADING",
      PB = "LOADING",
      RJ = "LOADING",
      SK = "LOADING",
      TN = "LOADING",
      TR = "LOADING",
      UK = "LOADING",
      UP = "LOADING",
      WB = "LOADING",
      TeN = "LOADING",
      TrR = "LOADING",
      AN = "LOADING",
      CH = "LOADING",
      DH = "LOADING",
      DD = "LOADING",
      DL = "LOADING",
      LD = "LOADING",
      PY = "LOADING",
      LAD = "LOADING",
  PD = "LOADING",
  LX = "LOADING";

  String AP1 = "LOADING",
      AR1 = "LOADING",
      AS1 = "LOADING",
      BR1 = "LOADING",
      CG1 = "LOADING",
      GA1 = "LOADING",
      GJ1 = "LOADING",
      HR1 = "LOADING",
      HP1 = "LOADING",
      JK1 = "LOADING",
      JH1 = "LOADING",
      KA1 = "LOADING",
      KL1 = "LOADING",
      MP1 = "LOADING",
      MadP1 = "LOADING",
      MH1 = "LOADING",
      MN1 = "LOADING",
      ML1 = "LOADING",
      MZ1 = "LOADING",
      NL1 = "LOADING",
      OR1 = "LOADING",
      PB1 = "LOADING",
      RJ1 = "LOADING",
      SK1 = "LOADING",
      TN1 = "LOADING",
      TR1 = "LOADING",
      UK1 = "LOADING",
      UP1 = "LOADING",
      WB1 = "LOADING",
      TeN1 = "LOADING",
      TrR1 = "LOADING",
      AN1 = "LOADING",
      CH1 = "LOADING",
      DH1 = "LOADING",
      DD1 = "LOADING",
      DL1 = "LOADING",
      LD1 = "LOADING",
      PY1 = "LOADING",
      LAD1 = "LOADING",
  PD1 = "LOADING",
  LX1 = "LOADING";


  String AP2 = "LOADING",
      AR2 = "LOADING",
      AS2 = "LOADING",
      BR2 = "LOADING",
      CG2 = "LOADING",
      GA2 = "LOADING",
      GJ2 = "LOADING",
      HR2 = "LOADING",
      HP2 = "LOADING",
      JK2 = "LOADING",
      JH2 = "LOADING",
      KA2 = "LOADING",
      KL2 = "LOADING",
      MP2 = "LOADING",
      MadP2 = "LOADING",
      MH2 = "LOADING",
      MN2 = "LOADING",
      ML2 = "LOADING",
      MZ2 = "LOADING",
      NL2 = "LOADING",
      OR2 = "LOADING",
      PB2 = "LOADING",
      RJ2 = "LOADING",
      SK2 = "LOADING",
      TN2 = "LOADING",
      TR2 = "LOADING",
      UK2 = "LOADING",
      UP2 = "LOADING",
      WB2 = "LOADING",
      TeN2 = "LOADING",
      TrR2 = "LOADING",
      AN2 = "LOADING",
      CH2 = "LOADING",
      DH2 = "LOADING",
      DD2 = "LOADING",
      DL2 = "LOADING",
      LD2 = "LOADING",
      PY2 = "LOADING",
      LAD2 = "LOADING",
      PD2 = "LOADING",
      LX2 = "LOADING";

  void initState() {
    super.initState();
    getData();
  }

  Future<String> getData() async {
    var response = await http.get(
        Uri.encodeFull("http://covid19-india-adhikansh.herokuapp.com/states"),
//        Uri.encodeFull("https://covid-india-cases.herokuapp.com/states/"),
        headers: {"Accept": "application/json"});
    setState(() {
      data = jsonDecode(response.body);
      print(data["state"][2]["confirmed"].toString());
//      //return data;
      //CONFIRNED CASES
      AP = data["state"][1]["confirmed"].toString();
      AR = data["state"][2]["confirmed"].toString();
      AS = data["state"][3]["confirmed"].toString();
      BR = data["state"][4]["confirmed"].toString();
      CG = data["state"][6]["confirmed"].toString();
      GA = data["state"][8]["confirmed"].toString();
      GJ = data["state"][9]["confirmed"].toString();
      HR = data["state"][10]["confirmed"].toString();
      HP = data["state"][11]["confirmed"].toString();
      JK = data["state"][12]["confirmed"].toString();
      JH = data["state"][13]["confirmed"].toString();
      KA = data["state"][14]["confirmed"].toString();
      KL = data["state"][15]["confirmed"].toString();
      LAD = data["state"][16]["confirmed"].toString();
      MadP = data["state"][17]["confirmed"].toString();
      MH = data["state"][18]["confirmed"].toString();
      MN = data["state"][19]["confirmed"].toString();
      ML = data["state"][20]["confirmed"].toString();
      MZ = data["state"][21]["confirmed"].toString();
      NL = data["state"][22]["confirmed"].toString();
      OR = data["state"][23]["confirmed"].toString();
      PD = data["state"][24]["confirmed"].toString();
      PB = data["state"][25]["confirmed"].toString();
      RJ = data["state"][26]["confirmed"].toString();
      TeN = data["state"][28]["confirmed"].toString();
      TrR = data["state"][29]["confirmed"].toString();
      UK = data["state"][30]["confirmed"].toString();
      UP = data["state"][31]["confirmed"].toString();
      WB = data["state"][32]["confirmed"].toString();
      CH = data["state"][5]["confirmed"].toString();
      DH = data["state"][7]["confirmed"].toString();
      AN = data["state"][0]["confirmed"].toString();
      TN = data["state"][27]["confirmed"].toString();


      //CURED
      AP1 = data["state"][1]["cured"].toString();
      AR1 = data["state"][2]["cured"].toString();
      AS1 = data["state"][3]["cured"].toString();
      BR1 = data["state"][4]["cured"].toString();
      CG1 = data["state"][6]["cured"].toString();
      GA1 = data["state"][8]["cured"].toString();
      GJ1 = data["state"][9]["cured"].toString();
      HR1 = data["state"][10]["cured"].toString();
      HP1 = data["state"][11]["cured"].toString();
      JK1 = data["state"][12]["cured"].toString();
      JH1 = data["state"][13]["cured"].toString();
      KA1 = data["state"][14]["cured"].toString();
      KL1 = data["state"][15]["cured"].toString();
      LAD1 = data["state"][16]["cured"].toString();
      MadP1 = data["state"][17]["cured"].toString();
      MH1 = data["state"][18]["cured"].toString();
      MN1 = data["state"][19]["cured"].toString();
      ML1 = data["state"][20]["cured"].toString();
      MZ1 = data["state"][21]["cured"].toString();
      NL1 = data["state"][22]["cured"].toString();
      OR1 = data["state"][23]["cured"].toString();
      PD1 = data["state"][24]["cured"].toString();
      PB1 = data["state"][25]["cured"].toString();
      RJ1 = data["state"][26]["cured"].toString();
      TN1 = data["state"][27]["CURED"].toString();
      TeN1 = data["state"][28]["cured"].toString();
      TrR1 = data["state"][29]["cured"].toString();
      UK1 = data["state"][30]["cured"].toString();
      UP1 = data["state"][31]["cured"].toString();
      WB1 = data["state"][32]["cured"].toString();
      CH1 = data["state"][5]["cured"].toString();
      DH1 = data["state"][7]["cured"].toString();
      AN1 = data["state"][0]["cured"].toString();


      //DEATHS
      AP2 = data["state"][1]["death"].toString();
      AR2 = data["state"][2]["death"].toString();
      AS2 = data["state"][3]["death"].toString();
      BR2 = data["state"][4]["death"].toString();
      CG2 = data["state"][6]["death"].toString();
      GA2 = data["state"][8]["death"].toString();
      GJ2 = data["state"][9]["death"].toString();
      HR2 = data["state"][10]["death"].toString();
      HP2 = data["state"][11]["death"].toString();
      JK2 = data["state"][12]["death"].toString();
      JH2 = data["state"][13]["death"].toString();
      KA2 = data["state"][14]["death"].toString();
      KL2 = data["state"][15]["death"].toString();
      LAD2 = data["state"][16]["death"].toString();
      MadP2 = data["state"][17]["death"].toString();
      MH2 = data["state"][18]["death"].toString();
      MN2 = data["state"][19]["death"].toString();
      ML2 = data["state"][20]["death"].toString();
      MZ2 = data["state"][21]["death"].toString();
      NL2 = data["state"][22]["death"].toString();
      OR2 = data["state"][23]["death"].toString();
      PD2 = data["state"][24]["death"].toString();
      PB2 = data["state"][25]["death"].toString();
      RJ2 = data["state"][26]["death"].toString();
      TN2 = data["state"][27]["death"].toString();
      TeN2 = data["state"][28]["death"].toString();
      TrR2 = data["state"][29]["death"].toString();
      UK2 = data["state"][30]["death"].toString();
      UP2 = data["state"][31]["death"].toString();
      WB2 = data["state"][32]["death"].toString();
      CH2 = data["state"][5]["death"].toString();
      DH2 = data["state"][7]["death"].toString();
      AN2 = data["state"][0]["death"].toString();
//      //CONFIRNED CASES
//      AP = data[0][1]["noOfCases"].toString();
//      AR = data[0][2]["noOfCases"].toString();
//      AS = data[0][3]["noOfCases"].toString();
//      BR = data[0][4]["noOfCases"].toString();
//      CG = data[0][6]["noOfCases"].toString();
//      GA = data[0][9]["noOfCases"].toString();
//      GJ = data[0][10]["noOfCases"].toString();
//      HR = data[0][11]["noOfCases"].toString();
//      HP = data[0][12]["noOfCases"].toString();
//      JK = data[0][13]["noOfCases"].toString();
//      JH = data[0][14]["noOfCases"].toString();
//      KA = data[0][15]["noOfCases"].toString();
//      KL = data[0][16]["noOfCases"].toString();
//      LAD = data[0][17]["noOfCases"].toString();
//      LX = data[0][18]["noOfCases"].toString();
//      MadP = data[0][19]["noOfCases"].toString();
//      MH = data[0][20]["noOfCases"].toString();
//      MN = data[0][21]["noOfCases"].toString();
//      ML = data[0][22]["noOfCases"].toString();
//      MZ = data[0][23]["noOfCases"].toString();
//      NL = data[0][24]["noOfCases"].toString();
//      OR = data[0][25]["noOfCases"].toString();
//      PD = data[0][26]["noOfCases"].toString();
//      PB = data[0][27]["noOfCases"].toString();
//      RJ = data[0][28]["noOfCases"].toString();
//      SK = data[0][29]["noOfCases"].toString();
//      TeN = data[0][31]["noOfCases"].toString();
//      TrR = data[0][32]["noOfCases"].toString();
//      UK = data[0][34]["noOfCases"].toString();
//      UP = data[0][33]["noOfCases"].toString();
//      WB = data[0][35]["noOfCases"].toString();
//      CH = data[0][5]["noOfCases"].toString();
//      DH = data[0][8]["noOfCases"].toString();
//      AN = data[0][0]["noOfCases"].toString();
//      TN = data[0][30]["noOfCases"].toString();
//      DD = data[0][7]["noOfCases"].toString();
//
//
//
//      //CURED
//      AP1 = data[0][1]["cured"].toString();
//      AR1 = data[0][2]["cured"].toString();
//      AS1 = data[0][3]["cured"].toString();
//      BR1 = data[0][4]["cured"].toString();
//      CG1 = data[0][6]["cured"].toString();
//      GA1 = data[0][9]["cured"].toString();
//      GJ1 = data[0][10]["cured"].toString();
//      HR1 = data[0][11]["cured"].toString();
//      HP1 = data[0][12]["cured"].toString();
//      JK1 = data[0][13]["cured"].toString();
//      JH1 = data[0][14]["cured"].toString();
//      KA1 = data[0][15]["cured"].toString();
//      KL1 = data[0][16]["cured"].toString();
//      LAD1 = data[0][17]["cured"].toString();
//      LX1 = data[0][18]["cured"].toString();
//      MadP1 = data[0][19]["cured"].toString();
//      MH1 = data[0][20]["cured"].toString();
//      MN1 = data[0][21]["cured"].toString();
//      ML1 = data[0][22]["cured"].toString();
//      MZ1 = data[0][23]["cured"].toString();
//      NL1 = data[0][24]["cured"].toString();
//      OR1 = data[0][25]["cured"].toString();
//      PD1 = data[0][26]["cured"].toString();
//      PB1 = data[0][27]["cured"].toString();
//      RJ1 = data[0][28]["cured"].toString();
//      SK1 = data[0][29]["CURED"].toString();
//      TN1 = data[0][30]["CURED"].toString();
//      TeN1 = data[0][31]["cured"].toString();
//      TrR1 = data[0][32]["cured"].toString();
//      UK1 = data[0][34]["cured"].toString();
//      UP1 = data[0][33]["cured"].toString();
//      WB1 = data[0][35]["cured"].toString();
//      CH1 = data[0][5]["cured"].toString();
//      DH1 = data[0][8]["cured"].toString();
//      AN1 = data[0][0]["cured"].toString();
//      DD1 = data[0][7]["cured"].toString();
//
//
//
//      //DEATHS
//      AP2 = data[0][1]["deaths"].toString();
//      AR2 = data[0][2]["deaths"].toString();
//      AS2 = data[0][3]["deaths"].toString();
//      BR2 = data[0][4]["deaths"].toString();
//      CG2 = data[0][6]["deaths"].toString();
//      GA2 = data[0][9]["deaths"].toString();
//      GJ2 = data[0][10]["deaths"].toString();
//      HR2 = data[0][11]["deaths"].toString();
//      HP2 = data[0][12]["deaths"].toString();
//      JK2 = data[0][13]["deaths"].toString();
//      JH2 = data[0][14]["deaths"].toString();
//      KA2 = data[0][15]["deaths"].toString();
//      KL2 = data[0][16]["deaths"].toString();
//      LAD2 = data[0][17]["deaths"].toString();
//      LX2 = data[0][18]["deaths"].toString();
//      MadP2 = data[0][19]["deaths"].toString();
//      MH2 = data[0][20]["deaths"].toString();
//      MN2 = data[0][21]["deaths"].toString();
//      ML2 = data[0][22]["deaths"].toString();
//      MZ2 = data[0][23]["deaths"].toString();
//      NL2 = data[0][24]["deaths"].toString();
//      OR2 = data[0][25]["deaths"].toString();
//      PD2 = data[0][26]["deaths"].toString();
//      PB2 = data[0][27]["deaths"].toString();
//      RJ2 = data[0][28]["deaths"].toString();
//      SK2 = data[0][29]["deaths"].toString();
//      TN2 = data[0][30]["deaths"].toString();
//      TeN2 = data[0][31]["deaths"].toString();
//      TrR2 = data[0][32]["deaths"].toString();
//      UK2 = data[0][33]["deaths"].toString();
//      UP2 = data[0][34]["deaths"].toString();
//      WB2 = data[0][35]["deaths"].toString();
//      CH2 = data[0][5]["deaths"].toString();
//      DH2 = data[0][8]["deaths"].toString();
//      AN2 = data[0][0]["deaths"].toString();
//      DD2 = data[0][7]["deaths"].toString();



//

    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Andaman and Nicobar Islands\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + AN + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            AN1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            AN2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Andhra Pradesh\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + AP + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            AP1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            AP2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Arunachal Pradesh\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + AR + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            AR1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            AR2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Assam\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + AS + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            AS1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            AS2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Bihar\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + BR + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            BR1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            BR2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Chandigarh\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + CG + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            CG1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            CG2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Chhattisgarh\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + CH + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            CH1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            CH2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Delhi\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + DH + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            DH1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            DH2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Goa\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + GA + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            GA1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            GA2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Gujarat\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + GJ + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            GJ1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            GJ2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Haryana\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + HR + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            HR1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            HR2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Himachal Pradesh\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + HP + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            HP1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            HP2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Jammu and Kashmir\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + JK + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            JK1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            JK2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Jharkhand\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + JH + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            JH1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            JH2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Karnataka\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + KA + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            KA1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            KA2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Kerala\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + KL + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            KL1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            KL2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Ladakh\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + LAD + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            LAD1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            LAD2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Madhya Pradesh\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + MadP + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            MadP1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            MadP2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Maharashtra\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + MH + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            MH1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            MH2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Manipur\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + MN + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            MN1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            MN2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Meghalaya\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + ML + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            ML1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            HR2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Mizoram\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + MZ + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            MZ1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            MZ2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Nagaland\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + NL + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            NL1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            NL2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Odisha\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + OR + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            OR1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            OR2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Puducherry\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + PD + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            PD1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            PD2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Punjab\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + PB + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            PB1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            PB2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Rajasthan\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + RJ + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            RJ1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            RJ2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Tamil Nadu\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + TeN + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            TeN1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            TeN2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Telengana\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + TeN + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            TeN1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            TeN2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Tripura\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + TrR + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            TrR1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            TrR2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Uttarakhand\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + UK + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            UK1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            UK2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "Uttar Pradesh\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + UP + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            UP1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            UP2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Reusablecard(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "West Bengal\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                        text: "Confirmed : " + WB + "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Cured : " +
                            WB1 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Deaths : " +
                            WB2 +
                            "\n",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
