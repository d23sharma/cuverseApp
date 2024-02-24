import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_by_price_comp_model.dart';
export 'filter_by_price_comp_model.dart';

class FilterByPriceCompWidget extends StatefulWidget {
  const FilterByPriceCompWidget({super.key});

  @override
  State<FilterByPriceCompWidget> createState() =>
      _FilterByPriceCompWidgetState();
}

class _FilterByPriceCompWidgetState extends State<FilterByPriceCompWidget> {
  late FilterByPriceCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterByPriceCompModel());

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
          height: 140.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
              topLeft: Radius.circular(0.0),
              topRight: Radius.circular(0.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SelectionArea(
                  child: Text(
                valueOrDefault<String>(
                  formatNumber(
                    _model.sliderValue,
                    formatType: FormatType.decimal,
                    decimalType: DecimalType.periodDecimal,
                    currency: '\$',
                  ),
                  '58 Sq. m',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter fonts',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: false,
                    ),
              )),
              Container(
                width: 350.0,
                child: Slider(
                  activeColor: FlutterFlowTheme.of(context).tertiary,
                  inactiveColor: FlutterFlowTheme.of(context).primaryText,
                  min: 530000.0,
                  max: 1667646.0,
                  value: _model.sliderValue ??= 530000.0,
                  divisions: 11376,
                  onChanged: (newValue) {
                    setState(() => _model.sliderValue = newValue);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
