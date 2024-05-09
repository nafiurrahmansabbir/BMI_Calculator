import 'package:bmi_calculator/screens/widgets/input_details_wigets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'helper/bmi_chart_helper.dart';
import 'helper/bmi_meter_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController ageController = TextEditingController();
  TextEditingController feetController = TextEditingController();
  TextEditingController inchController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  double? ans;
  double? lb;
  bool changeMaleGenderColor = false;
  bool changeFemaleGenderColor = false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("BMI Calculator",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.5,
            color: Colors.white
        ),),
        centerTitle: true,
        actions: [
          IconButton(
              color: Colors.white,
              onPressed: (){
                dispose1();
              }, icon: Icon(Icons.replay)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            inputArea(),
            bmiChart(ans),

          ],
        ),
      ),
    );
  }
  Widget inputArea() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: InputDetails(
                  ageController: ageController,
                  labelText: 'Age',
                )),
            const SizedBox(
              width: 45,
            ),
            Expanded(
                child: InputDetails(
                    ageController: feetController, labelText: "Ht (f)")),
            const SizedBox(
              width: 40,
            ),
            Expanded(
                child: InputDetails(
                    ageController: inchController, labelText: "Ht (in)")),
            const SizedBox(
              width: 50,
            ),
            const Text('ft'),
            const SizedBox(
              width: 10,
            ),
            InkWell(
                onTap: () {}, child: const Icon(Icons.arrow_drop_down_outlined))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    height: 100,
                    child: InkWell(
                      onTap: () {
                        changeMaleGenderColor = true;
                        changeFemaleGenderColor = false;
                        setState(() {});
                      },
                      child: Icon(
                        Icons.male,
                        color:
                        changeMaleGenderColor == true ? Colors.green : null,
                        size: 28,
                      ),
                    ),
                  ),
                  const Text(
                    ' | ',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 100,
                    child: InkWell(
                      onTap: () {
                        changeFemaleGenderColor = true;
                        changeMaleGenderColor = false;
                        setState(() {});
                      },
                      child: Icon(Icons.female,
                          color: changeFemaleGenderColor == true
                              ? Colors.green
                              : null,
                          size: 28),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              height: 100,
              width: 110,
              child: TextFormField(
                controller: weightController,
                decoration: const InputDecoration(
                  labelText: "Weight",
                ),
              ),
            ),
            const SizedBox(
              width: 90,
            ),
            // const Text('wt  '),
            InkWell(
              onTap: () {
                bmiCalculation();
              },
              child: const Icon(Icons.done_outline_sharp),
            )
          ],
        ),
        bmiMeter(ans),
      ],
    );
  }

  void bmiCalculation() {
    double? wt = double.tryParse(weightController.text) ?? 0;
    double? ft = double.tryParse(feetController.text) ?? 0;
    double? inch = double.tryParse(inchController.text) ?? 0;

    double? meter = (ft * 12 + inch) * 0.0254;
    ans = wt / (meter * meter);
    setState(() {});
  }

  void dispose1() {
    // super.dispose();
    ageController.clear();
    feetController.clear();
    inchController.clear();
    weightController.clear();
  }


}




