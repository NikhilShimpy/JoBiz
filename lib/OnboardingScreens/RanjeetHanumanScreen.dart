
import 'package:find_your_job/OnboardingScreens/RanjeetAnalysis.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class RanjeetHanumanScreen extends StatelessWidget {
  const RanjeetHanumanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the pie chart (fictional population data)
    Map<String, double> dataMap = {

      'Mp Online': 19.33, // in million
      'Clothes': 13.45,
      'Resturant & Cafe': 12.61,
      'Hardware Shop': 1.68,
      'Glocery': 15.97,
      'Play School': 2.52,
      'Furniture Shop': 13.45,
      'Electronic Shop': 6.72,
      'Electrical Shop': 5.88,
      'General Store': 8.40,

    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          'Ranjeet Hanuman',
          style: TextStyle(
            color: Color.fromRGBO(229, 9, 20, 0.5),
            fontWeight: FontWeight.w500,
            fontSize: 28,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 6, top: 10),
              child: Text(
                "JoBiz analysis for your area",
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RanjeetAnalysis()),
                      );
                    },
                    child: Container(
                      width: 350,
                      height: 90,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text("Click here to see JoBiz analysis for Ranjeet Hanuman.",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,decoration: TextDecoration.underline),),
                      ),
                    ),
                  ),
                ),
              ),
            ),

          const SizedBox(height: 20),

          const Padding(
            padding: EdgeInsets.all(10),
            child: Text("Following Pie-chart show analysis based on percentage",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          ),

          Center(
              child: PieChart(
                dataMap: dataMap,
                chartRadius: 225,
                chartType: ChartType.disc,
                colorList: const [
                  Colors.blue,
                  Colors.green,
                  Colors.orange,
                  Colors.red,
                  Colors.yellow,
                  Colors.purple,
                  Colors.teal,
                  Colors.pink,
                  Colors.grey,
                  Colors.indigo,
                ],
              ),
            ),
            const SizedBox(height: 200,width: 200,),
           //listview
          ],
        ),
      ),
    );
  }
}

