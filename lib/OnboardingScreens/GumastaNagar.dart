import 'package:find_your_job/OnboardingScreens/GumastaNagarAnalysis.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class GumastaNagarScreen extends StatelessWidget {
  const GumastaNagarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for the pie chart (fictional population data)
    Map<String, double> dataMap = {

      'Mp Online': 6.25, // in million
      'Clothes': 14.06,
      'Resturant & Cafe': 29.69,
      'Hardware Shop': 1.56,
      'Glocery': 20.31,
      'Play School': 3.13,
      'Furniture Shop': 12.50,
      'Electronic Shop': 10.94,
      'Electrical Shop': 4.69,
      'General Store': 10.94,

    };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Text(
          'Gumasta Nagar',
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const GumastaNagarAnalysis()),
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
                        child: Text("Click here to see JoBiz analysis for Gumasta Nagar.",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,decoration: TextDecoration.underline),),
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
                  Colors.grey,
                  Colors.teal,
                  Colors.green,
                  Colors.red,
                  Colors.yellow,
                  Colors.purple,
                  Colors.pink,
                  Colors.orange,
                  Colors.indigo,
                  Colors.blue,
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
