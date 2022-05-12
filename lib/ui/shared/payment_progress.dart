import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:zero_pay_demo/utils/app_text_style.dart';

class PaymentProgress extends StatelessWidget {
  const PaymentProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SfRadialGauge(
        backgroundColor: Colors.transparent,
        enableLoadingAnimation: true,
        axes: <RadialAxis>[
          RadialAxis(
            showLabels: false,
            showTicks: false,
            canScaleToFit: true,
            annotations: [
              GaugeAnnotation(
                verticalAlignment: GaugeAlignment.center,
                horizontalAlignment: GaugeAlignment.center,
                widget: Text(
                  'LEFT OF ₹9000 TOTAL',
                  style: AppTextStyle.poppins(
                    fontSize: 12,
                    color: const Color(0xFF999999),
                  ),
                ),
              ),
              GaugeAnnotation(
                widget: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 80.0,
                  ),
                  child: Text(
                    '₹8000',
                    style: AppTextStyle.poppins(
                      fontSize: 38,
                      color: const Color(0xFF151522),
                    ),
                  ),
                ),
              ),
            ],
            startAngle: 180,
            endAngle: 0,
            pointers: const <GaugePointer>[
              RangePointer(
                value: 70,
                width: 15,
                cornerStyle: CornerStyle.bothCurve,
                color: Color(0xFF1FE07D),
              ),
            ],
          )
        ],
      ),
    );
  }
}
