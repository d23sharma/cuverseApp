import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reset_icon_btn_model.dart';
export 'reset_icon_btn_model.dart';

class ResetIconBtnWidget extends StatefulWidget {
  const ResetIconBtnWidget({super.key});

  @override
  State<ResetIconBtnWidget> createState() => _ResetIconBtnWidgetState();
}

class _ResetIconBtnWidgetState extends State<ResetIconBtnWidget> {
  late ResetIconBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResetIconBtnModel());
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
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: '',
        icon: FaIcon(
          FontAwesomeIcons.redo,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 18.0,
        ),
        options: FFButtonOptions(
          width: 40.0,
          height: 30.0,
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: FlutterFlowTheme.of(context).secondaryBackground,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Inter fonts',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 18.0,
                useGoogleFonts: false,
              ),
          elevation: 6.0,
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).alternate,
            width: 0.2,
          ),
          borderRadius: BorderRadius.circular(5.0),
          hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
          hoverBorderSide: BorderSide(
            color: FlutterFlowTheme.of(context).alternate,
            width: 0.2,
          ),
          hoverTextColor: FlutterFlowTheme.of(context).tertiary,
          hoverElevation: 0.2,
        ),
      ),
    );
  }
}
