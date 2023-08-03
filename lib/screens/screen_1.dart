
import 'package:demoapp/screens/widget/chart_container.dart';
import 'package:demoapp/screens/widget/line_chart_content.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.indigoAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(77, 84, 84, 0.2),
                            blurRadius: 10.0,
                            offset: Offset(0,5)
                        )
                      ]
                  ),
                  child: const Padding(padding:  EdgeInsets.all(20),
                    child: Text("Some text here 1 ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(77, 84, 84, 0.2),
                            blurRadius: 10.0,
                            offset: Offset(0,5)
                        )
                      ]
                  ),
                  child: const Padding(padding:  EdgeInsets.all(20),
                    child: Text("Some text here 2 ",style: TextStyle(fontWeight: FontWeight.bold),),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: 500,
              height: 400,
              child: ChartContainer(
                title: 'Line Chart',
                color: Color.fromRGBO(45, 108, 223, 1),
                chart: LineChartContent(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
