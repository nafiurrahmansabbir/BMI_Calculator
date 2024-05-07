import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    // double screenHeight=MediaQuery.of(context).size.height;
    double screenWidth=MediaQuery.of(context).size.width;

    double SizeBoxWidth=screenWidth*0.15;
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 60,
        backgroundColor: Colors.deepPurple,
        title: Text("BMI Calculator",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            color: Colors.white
        ),),
        actions: [
          IconButton(
              color: Colors.white,

              // iconSize: 30,
              onPressed: (){}, icon: Icon(Icons.replay)),
          IconButton(
              color: Colors.white,
              // iconSize: 30,
              onPressed: (){
              }, icon: Icon(Icons.more_vert))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [


                  SizedBox(
                    width: SizeBoxWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Age'
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeBoxWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Ht\'\'(ft)'
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeBoxWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Ht\'(in)'
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.male,size: 40,)),
                  Text("l",style: TextStyle(fontSize: 30),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.female,size: 40,)),
                  // SizedBox(width: 20,),
                  SizedBox(
                    width: screenWidth*0.25,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Weight(KG)'
                      ),
                    ),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.navigate_next_sharp,size: 40,))
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    child: SfRadialGauge(
                        axes: <RadialAxis>[
                          RadialAxis(minimum: 15, maximum: 40,
                              ranges: <GaugeRange>[
                                GaugeRange(startValue: 15, endValue: 18, color:Colors.red),
                                GaugeRange(startValue: 18,endValue: 25,color: Colors.green),
                                GaugeRange(startValue: 25,endValue: 40,color: Colors.yellow)],
                              pointers: <GaugePointer>[
                                NeedlePointer(value: 10)],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(widget: Container(child:
                                Text('10.0',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                                    angle: 90, positionFactor: 0.5
                                )]
                          )]),
                  ),
                ],
              ),

            ],
          ),
        ),
      )
    );
  }







// Widget _genderSelector(){
//   return Container(
//     child: Row(
//       mainAxisSize: MainAxisSize.max,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Column(
//           children: [
//             IconButton(
//               iconSize: 60,
//                 onPressed: (){
//                 setState(() {
//                   _selectGender=0;
//                 });
//                 },
//                 icon: Icon(Icons.male,
//                   color: _selectGender==0?Theme.of(context).colorScheme.primary:Colors.red,
//                 ),
//             ),
//             const Text("Male",style: TextStyle(
//               fontSize: 18
//             ),)
//           ],
//         ),
//       ],
//     ),
//   );
// }
}




