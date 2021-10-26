import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

void main() => runApp(ChartApp());

class ChartApp extends StatefulWidget {
  @override
  State<ChartApp> createState() => _ChartAppState();
}

class _ChartAppState extends State<ChartApp> {
  @override
  Widget build(BuildContext context) {
    bool isCardView = false;
    double _markerValue = 138;
    int _value = 0;
    bool isWebFullView = false;
    double _iconPointerValue = 20;
    dynamic _stepSliderValue = 0;
    void _stepSlider(dynamic values) {
      _stepSliderValue = values as double;
    }

    double _textWidgetPointerValue = 40;
    double _textPointerValue = 60;

    /// Returns the horizontal axis track.
    Widget _buildHorizontalGauges(String axisTrackName, Widget linearGauge) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(axisTrackName),
          linearGauge,
          const SizedBox(height: 10),
        ],
      );
    }

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: ListView(
              children: [
                Center(
                    child: Container(
                        child: Column(
                  children: [
                    SfRadialGauge(
                      enableLoadingAnimation: true,
                      axes: <RadialAxis>[
                        RadialAxis(
                            showLabels: false,
                            showTicks: false,
                            radiusFactor: 0.8,
                            minimum: 0,
                            maximum: 240,
                            axisLineStyle: const AxisLineStyle(
                                cornerStyle: CornerStyle.startCurve,
                                thickness: 5),
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(
                                  angle: 90,
                                  positionFactor: 0,
                                  widget: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text('142',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              fontSize: isCardView ? 20 : 30)),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 2, 0, 0),
                                        child: Text(
                                          'km/h',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.italic,
                                              fontSize: isCardView ? 12 : 14),
                                        ),
                                      )
                                    ],
                                  )),
                              GaugeAnnotation(
                                  angle: 124,
                                  positionFactor: 1.1,
                                  widget: Container(
                                    child: Text('0',
                                        style: TextStyle(
                                            fontSize: isCardView ? 12 : 14)),
                                  )),
                              GaugeAnnotation(
                                  angle: 54,
                                  positionFactor: 1.1,
                                  widget: Container(
                                    child: Text('240',
                                        style: TextStyle(
                                            fontSize: isCardView ? 12 : 14)),
                                  )),
                            ],
                            pointers: <GaugePointer>[
                              const RangePointer(
                                value: 142,
                                width: 18,
                                pointerOffset: -6,
                                cornerStyle: CornerStyle.bothCurve,
                                color: Color(0xFFF67280),
                                gradient: SweepGradient(colors: <Color>[
                                  Color(0xFFFF7676),
                                  Color(0xFFF54EA2)
                                ], stops: <double>[
                                  0.25,
                                  0.75
                                ]),
                              ),
                              MarkerPointer(
                                value: isCardView ? 136 : _markerValue,
                                color: Colors.white,
                                markerType: MarkerType.circle,
                              ),
                            ]),
                      ],
                    ),
                    SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                            showAxisLine: false,
                            showLabels: false,
                            showTicks: false,
                            startAngle: 180,
                            endAngle: 360,
                            minimum: 0,
                            maximum: 120,
                            canScaleToFit: true,
                            radiusFactor: 0.79,
                            pointers: const <GaugePointer>[
                              NeedlePointer(
                                  needleStartWidth: 1,
                                  lengthUnit: GaugeSizeUnit.factor,
                                  needleEndWidth: 5,
                                  needleLength: 0.7,
                                  value: 82,
                                  knobStyle: KnobStyle(knobRadius: 0)),
                            ],
                            ranges: <GaugeRange>[
                              GaugeRange(
                                  startValue: 0,
                                  endValue: 20,
                                  startWidth: 0.45,
                                  endWidth: 0.45,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  color: const Color(0xFFDD3800)),
                              GaugeRange(
                                  startValue: 20.5,
                                  endValue: 40,
                                  startWidth: 0.45,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  endWidth: 0.45,
                                  color: const Color(0xFFFF4100)),
                              GaugeRange(
                                  startValue: 40.5,
                                  endValue: 60,
                                  startWidth: 0.45,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  endWidth: 0.45,
                                  color: const Color(0xFFFFBA00)),
                              GaugeRange(
                                  startValue: 60.5,
                                  endValue: 80,
                                  startWidth: 0.45,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  endWidth: 0.45,
                                  color: const Color(0xFFFFDF10)),
                              GaugeRange(
                                  startValue: 80.5,
                                  endValue: 100,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  startWidth: 0.45,
                                  endWidth: 0.45,
                                  color: const Color(0xFF8BE724)),
                              GaugeRange(
                                  startValue: 100.5,
                                  endValue: 120,
                                  startWidth: 0.45,
                                  endWidth: 0.45,
                                  sizeUnit: GaugeSizeUnit.factor,
                                  color: const Color(0xFF64BE00)),
                            ]),
                        RadialAxis(
                          showAxisLine: false,
                          showLabels: false,
                          showTicks: false,
                          startAngle: 180,
                          endAngle: 360,
                          minimum: 0,
                          maximum: 120,
                          radiusFactor: 0.85,
                          canScaleToFit: true,
                          pointers: <GaugePointer>[
                            MarkerPointer(
                                markerType: MarkerType.text,
                                text: 'Poor',
                                value: 20.5,
                                textStyle: GaugeTextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: isCardView ? 14 : 18,
                                    fontFamily: 'Times'),
                                offsetUnit: GaugeSizeUnit.factor,
                                markerOffset: -0.12),
                            MarkerPointer(
                                markerType: MarkerType.text,
                                text: 'Average',
                                value: 60.5,
                                textStyle: GaugeTextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: isCardView ? 14 : 18,
                                    fontFamily: 'Times'),
                                offsetUnit: GaugeSizeUnit.factor,
                                markerOffset: -0.12),
                            MarkerPointer(
                                markerType: MarkerType.text,
                                text: 'Good',
                                value: 100.5,
                                textStyle: GaugeTextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: isCardView ? 14 : 18,
                                    fontFamily: 'Times'),
                                offsetUnit: GaugeSizeUnit.factor,
                                markerOffset: -0.12)
                          ],
                        ),
                      ],
                    ),
                    SfSliderTheme(
                        data: SfSliderThemeData(
                            tooltipBackgroundColor:
                                const Color.fromRGBO(0, 116, 227, 1)),
                        child: SfSlider(
                            showLabels: true,
                            interval: 5,
                            min: -10.0,
                            max: 10.0,
                            stepSize: 5,
                            showTicks: true,
                            value: _stepSliderValue,
                            onChanged: (dynamic values) {
                              setState(() {
                                _stepSliderValue = values as double;
                              });
                            },
                            enableTooltip: true)),
                    SfLinearGauge(
                        animateAxis: true,
                        axisTrackStyle:
                            const LinearAxisTrackStyle(thickness: 24),
                        orientation: LinearGaugeOrientation.vertical,
                        markerPointers: <LinearMarkerPointer>[
                          LinearWidgetPointer(
                            value: _textWidgetPointerValue,
                            onChanged: (dynamic value) {
                              setState(() {
                                _textWidgetPointerValue = value as double;
                              });
                            },
                            child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                    color: const Color(0xFFFFFFFF),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.black54,
                                        offset: const Offset(0.0, 1.0),
                                        //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                    child: Text(
                                        _textWidgetPointerValue
                                            .toStringAsFixed(0),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xffF45656),
                                        )))),
                          ),
                        ]),
                    SfLinearGauge(
                        animateAxis: true,
                        axisTrackStyle:
                            const LinearAxisTrackStyle(thickness: 24),
                        orientation: LinearGaugeOrientation.vertical,
                        markerPointers: <LinearMarkerPointer>[
                          LinearWidgetPointer(
                            value: _textPointerValue,
                            onChanged: (dynamic value) {
                              setState(() {
                                _textPointerValue = value as double;
                              });
                            },
                            child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                    color: const Color(0xff06589C),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.black54,
                                        offset: const Offset(0.0, 1.0),
                                        //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                    child: Text(
                                        _textPointerValue.toStringAsFixed(0),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xffF45656),
                                        )))),
                          ),
                          LinearWidgetPointer(
                            value: _iconPointerValue,
                            onChanged: (dynamic value) {
                              setState(() {
                                _iconPointerValue = value as double;
                              });
                            },
                            child: Container(
                                width: 32,
                                height: 32,
                                decoration: BoxDecoration(
                                    color: const Color(0xff06589C),
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: Colors.black54,
                                        offset: const Offset(0.0, 1.0),
                                        //(x,y)
                                        blurRadius: 6.0,
                                      ),
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                    child: Icon(
                                  Icons.thumb_up_rounded,
                                  size: 20,
                                  color: const Color(0xffF45656),
                                ))),
                          )
                        ]),
                  ],
                )))
              ],
            )));
  }
}
