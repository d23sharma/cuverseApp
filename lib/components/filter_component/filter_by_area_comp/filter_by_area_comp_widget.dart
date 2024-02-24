import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_by_area_comp_model.dart';
export 'filter_by_area_comp_model.dart';

class FilterByAreaCompWidget extends StatefulWidget {
  const FilterByAreaCompWidget({super.key});

  @override
  State<FilterByAreaCompWidget> createState() => _FilterByAreaCompWidgetState();
}

class _FilterByAreaCompWidgetState extends State<FilterByAreaCompWidget> {
  late FilterByAreaCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterByAreaCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Material(
        color: Colors.transparent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Container(
          width: 365.0,
          height: 118.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SelectionArea(
                    child: Text(
                  formatNumber(
                    _model.sliderValue,
                    formatType: FormatType.decimal,
                    decimalType: DecimalType.periodDecimal,
                    currency: '\$',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter fonts',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 18.0,
                        useGoogleFonts: false,
                      ),
                )),
                SliderTheme(
                  data: SliderThemeData(
                    showValueIndicator: ShowValueIndicator.always,
                  ),
                  child: Container(
                    width: 250.0,
                    child: Slider.adaptive(
                      activeColor: FlutterFlowTheme.of(context).tertiary,
                      inactiveColor: FlutterFlowTheme.of(context).primaryText,
                      min: valueOrDefault<double>(
                        FFAppState().initialValue.toDouble(),
                        530000.0,
                      ),
                      max: valueOrDefault<double>(
                        FFAppState().finalValue.toDouble(),
                        1501000.0,
                      ),
                      value: _model.sliderValue ??=
                          FFAppState().initialValue.toDouble(),
                      label: _model.sliderValue.toString(),
                      onChanged: (newValue) {
                        setState(() => _model.sliderValue = newValue);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
