import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'avail_unit_num_btn_model.dart';
export 'avail_unit_num_btn_model.dart';

class AvailUnitNumBtnWidget extends StatefulWidget {
  const AvailUnitNumBtnWidget({super.key});

  @override
  State<AvailUnitNumBtnWidget> createState() => _AvailUnitNumBtnWidgetState();
}

class _AvailUnitNumBtnWidgetState extends State<AvailUnitNumBtnWidget> {
  late AvailUnitNumBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvailUnitNumBtnModel());
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
      child: Container(
        width: 212.0,
        height: 34.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(0.0, 4.0),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
          border: Border.all(
            color: FlutterFlowTheme.of(context).secondary,
            width: 0.2,
          ),
        ),
        child: FFButtonWidget(
          onPressed: () {
            print('availableApartment pressed ...');
          },
          text: 'Available Units 108',
          options: FFButtonOptions(
            width: 212.0,
            height: 34.0,
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).secondaryBackground,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Inter fonts',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: false,
                ),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(0.0),
            hoverTextColor: FlutterFlowTheme.of(context).tertiary,
          ),
        ),
      ),
    );
  }
}
