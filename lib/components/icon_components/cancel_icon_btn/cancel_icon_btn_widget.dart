import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cancel_icon_btn_model.dart';
export 'cancel_icon_btn_model.dart';

class CancelIconBtnWidget extends StatefulWidget {
  const CancelIconBtnWidget({super.key});

  @override
  State<CancelIconBtnWidget> createState() => _CancelIconBtnWidgetState();
}

class _CancelIconBtnWidgetState extends State<CancelIconBtnWidget> {
  late CancelIconBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancelIconBtnModel());
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
        width: 60.0,
        height: 31.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: FlutterFlowTheme.of(context).alternate,
              offset: Offset(0.0, 4.0),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5.0),
            bottomRight: Radius.circular(5.0),
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
          ),
          border: Border.all(
            width: 0.2,
          ),
        ),
        child: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          buttonSize: 40.0,
          icon: Icon(
            Icons.cancel_outlined,
            color: FlutterFlowTheme.of(context).secondary,
            size: 22.0,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
      ),
    );
  }
}
