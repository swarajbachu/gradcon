import 'package:flutter/material.dart';

import '../../utils/Reusable_card.dart';
import '../../utils/colors.dart';
import '../constants.dart';


class ResultsPage extends StatelessWidget {
  ResultsPage({required this.apiResult,});

  final int apiResult;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('API CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: kTitleTextStyle,
                  ),
                )),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  color: kActiveCardColor,
                  card: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Your Api Score is',
                        style: kresultTextStyle,
                      ),
                      Text(
                        apiResult.toString(),
                        style: kBMITextStyle,
                      ),


                    ],
                  ), onPress: (){},
                )),
            InkWell(

              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  color: blueColor,
                ),
                child: const Text(
                  'ReCalculate',
                ),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            SizedBox(height: 70,)
            
          ],
        ));
  }
}
