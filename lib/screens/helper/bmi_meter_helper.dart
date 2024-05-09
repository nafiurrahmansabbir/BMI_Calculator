import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

SizedBox bmiMeter(double? ans) {
  return SizedBox(
    height: 250,
    width: 300,
    child: SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          minimum: 5.0,
          maximum: 41,
          ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0.0,
                endValue: 18.5,
                color: Colors.blueAccent),
            GaugeRange(
                startValue: 18.5,
                endValue: 25,
                color: Colors.green),
            GaugeRange(
                startValue: 25.0,
                endValue: 30,
                color: Colors.orangeAccent),
            GaugeRange(
                startValue: 30,
                endValue: 35,
                color: Colors.redAccent.shade200),
            GaugeRange(
                startValue: 35,
                endValue: 40,
                color: Colors.redAccent.shade400),
            GaugeRange(
                startValue: 40,
                endValue: 50,
                color: Colors.redAccent.shade700),

          ],
          pointers: <GaugePointer>[
            NeedlePointer(value: ans?.toDouble() ?? 0)
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
              widget: Text(
                ans?.toStringAsFixed(1) ?? '0',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              angle: 90,
              positionFactor: 0.5,
            )
          ],
        ),
      ],
    ),
  );
}