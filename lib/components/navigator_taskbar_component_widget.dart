import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navigator_taskbar_component_model.dart';
export 'navigator_taskbar_component_model.dart';

class NavigatorTaskbarComponentWidget extends StatefulWidget {
  const NavigatorTaskbarComponentWidget({super.key});

  @override
  State<NavigatorTaskbarComponentWidget> createState() =>
      _NavigatorTaskbarComponentWidgetState();
}

class _NavigatorTaskbarComponentWidgetState
    extends State<NavigatorTaskbarComponentWidget> {
  late NavigatorTaskbarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigatorTaskbarComponentModel());
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
        width: 393.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Available 108',
              options: FFButtonOptions(
                width: 154.0,
                height: 34.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter fonts',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts: false,
                    ),
                elevation: 5.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 0.2,
                ),
                borderRadius: BorderRadius.circular(5.0),
                hoverColor: FlutterFlowTheme.of(context).darkGray,
                hoverBorderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  width: 0.2,
                ),
                hoverTextColor: FlutterFlowTheme.of(context).tertiary,
              ),
            ),
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: '360 Video ',
              icon: Icon(
                FFIcons.k211928SocialYoutubeIcon,
                size: 15.0,
              ),
              options: FFButtonOptions(
                width: 167.0,
                height: 34.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter fonts',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.bold,
                      useGoogleFonts: false,
                    ),
                elevation: 5.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0.2,
                ),
                borderRadius: BorderRadius.circular(5.0),
                hoverBorderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  width: 0.2,
                ),
                hoverTextColor: FlutterFlowTheme.of(context).tertiary,
              ),
            ),
            FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: '',
              icon: FaIcon(
                FontAwesomeIcons.longArrowAltLeft,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 20.0,
              ),
              options: FFButtonOptions(
                width: 34.0,
                height: 34.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                elevation: 5.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 0.2,
                ),
                borderRadius: BorderRadius.circular(5.0),
                hoverTextColor: FlutterFlowTheme.of(context).tertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
