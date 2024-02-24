import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_icon_btn_model.dart';
export 'list_icon_btn_model.dart';

class ListIconBtnWidget extends StatefulWidget {
  const ListIconBtnWidget({super.key});

  @override
  State<ListIconBtnWidget> createState() => _ListIconBtnWidgetState();
}

class _ListIconBtnWidgetState extends State<ListIconBtnWidget> {
  late ListIconBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListIconBtnModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: 'List',
      icon: Icon(
        FFIcons.k5803966ChecklistClipboardTaskTodoIcon,
        color: FlutterFlowTheme.of(context).primaryText,
        size: 15.0,
      ),
      options: FFButtonOptions(
        width: 70.0,
        height: 34.0,
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).secondaryBackground,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Inter fonts',
              color: FlutterFlowTheme.of(context).primaryText,
              fontWeight: FontWeight.w600,
              useGoogleFonts: false,
            ),
        elevation: 5.0,
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
        hoverTextColor: FlutterFlowTheme.of(context).secondaryText,
      ),
      showLoadingIndicator: false,
    );
  }
}
