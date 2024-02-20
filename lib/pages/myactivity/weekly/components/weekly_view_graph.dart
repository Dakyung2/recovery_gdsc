
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:charts_flutter/flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:myapp/pages/myactivity/weekly/components/user_weekly_exercise_data.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChartWidget extends StatelessWidget {
  //DATA SOURCE OF THE CHART
  List<exerciseData> data = <exerciseData>[];
  final String id;

   BarChartWidget( 
    {super.key, 
    required this.id,
    required this.data});

/*
    String getDay(index) {
    switch (index) {
      case 0:
        return 'Sun';
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thu';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      default:
        return '';
    }
  }
*/
@override
void initState(){
  getDataFromFirestore().then((results){
    SchedulerBinding.instance!.addPersistentFrameCallback((timeStamp) {
      setState((){});
    });
  });
  super.initState();
}

Future<void> getDataFromFirestore()async{
  var snapshotValue = await FirebaseFirestore.instance.collection("Exercise").doc(.;
}
 @override
  Widget build(BuildContext context)  {

    double baseWidth = 1366;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
        List<charts.Series<exerciseData, String>> series = [
      charts.Series(
        id: "Subscribers",
        data: data,
        domainFn: (exerciseData series, _) => series.date.toString(),
        measureFn: (exerciseData series, _) => series.score,
        //colorFn: (exerciseData series, _) => series.barColor
      )
    ];
    
    return Container(
      child: charts.BarChart(
        series,
          barRendererDecorator: charts.BarLabelDecorator<String>(
          outsideLabelStyleSpec: charts.TextStyleSpec(
            color: charts.ColorUtil.fromDartColor(Colors.white),
        ),),
      
        vertical: true,
                    barGroupingType: charts.BarGroupingType.grouped,
          defaultRenderer: charts.BarRendererConfig(
            groupingType: charts.BarGroupingType.grouped,
            strokeWidthPx: 0.0,
            cornerStrategy: const charts.ConstCornerStrategy(4),
            
          ),
          domainAxis: charts.OrdinalAxisSpec(
            showAxisLine: false,
            renderSpec: charts.SmallTickRendererSpec(
              labelStyle: charts.TextStyleSpec(
                color: Color.white,
                fontSize: 5*ffem.round(),
                
              )
              
            )),
            primaryMeasureAxis: const charts.NumericAxisSpec(renderSpec: charts.NoneRenderSpec()),
      
      
      )

      
        
    
    );
  
  }}