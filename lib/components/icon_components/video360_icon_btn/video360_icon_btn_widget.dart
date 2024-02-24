import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'video360_icon_btn_model.dart';
export 'video360_icon_btn_model.dart';

class Video360IconBtnWidget extends StatefulWidget {
  const Video360IconBtnWidget({super.key});

  @override
  State<Video360IconBtnWidget> createState() => _Video360IconBtnWidgetState();
}

class _Video360IconBtnWidgetState extends State<Video360IconBtnWidget> {
  late Video360IconBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Video360IconBtnModel());
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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Virtual Tour',
            icon: Icon(
              FFIcons.k211928SocialYoutubeIcon,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 15.0,
            ),
            options: FFButtonOptions(
              width: 167.0,
              height: 34.0,
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).secondaryBackground,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Readex Pro',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontWeight: FontWeight.w600,
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
          ),
        ],
      ),
    );
  }
}
