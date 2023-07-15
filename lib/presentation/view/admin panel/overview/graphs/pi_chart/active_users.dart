
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../../ui_config/front_end_config.dart';
import '../../../../../elements/custom_text.dart';
import '../widgets/indicator.dart';



class ActiveUsersPiChartBody extends StatefulWidget {
  const ActiveUsersPiChartBody({super.key});

  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            pieTouchResponse == null ||
                            pieTouchResponse.touchedSection == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex = pieTouchResponse
                            .touchedSection!.touchedSectionIndex;
                      });
                    },
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 2,
                  centerSpaceRadius: 30,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          SizedBox(height: 40,),
          Container(
            alignment: Alignment.bottomRight,
            width: 80,
            child: Column(children: [
              Indicator(
                color: FrontEndConfig.kActiveMaleColor,
                text: 'Male Users',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
              Indicator(
                color: FrontEndConfig.kActiveFemaleColor,
                text: 'Female Users',
                isSquare: true,
              ),
              SizedBox(
                height: 4,
              ),
            ],),
          ),


        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 7.0 : 5.0;
      final radius = isTouched ? 10.0 : 14.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2.5)];
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: FrontEndConfig.kActiveMaleColor,
            value: 62.76,
            title: '62.76%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: FrontEndConfig.mainTextColor1,
              shadows: shadows,
            ),
          );
        case 1:
          return PieChartSectionData(
            color: FrontEndConfig.kActiveFemaleColor,
            value: 36.24,
            title: '66.11%',
            radius: radius,
            titleStyle: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: FrontEndConfig.mainTextColor1,
              shadows: shadows,
            ),
          );
        default:
          throw Error();
      }
    });
  }
}



