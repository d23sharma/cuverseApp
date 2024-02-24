import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'overview_taskbar_component_model.dart';
export 'overview_taskbar_component_model.dart';

class OverviewTaskbarComponentWidget extends StatefulWidget {
  const OverviewTaskbarComponentWidget({super.key});

  @override
  State<OverviewTaskbarComponentWidget> createState() =>
      _OverviewTaskbarComponentWidgetState();
}

class _OverviewTaskbarComponentWidgetState
    extends State<OverviewTaskbarComponentWidget> {
  late OverviewTaskbarComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OverviewTaskbarComponentModel());
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
        width: 373.0,
        height: 38.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'navigatorAvailablePage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              text: 'Apartment Units 108',
              options: FFButtonOptions(
                width: 154.0,
                height: 34.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter fonts',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 16.0,
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
                hoverTextColor: FlutterFlowTheme.of(context).tertiary,
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'nav360VideoLandscape',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 350),
                    ),
                  },
                );
              },
              text: '360 Video ',
              icon: Icon(
                FFIcons.k211928SocialYoutubeIcon,
                size: 15.0,
              ),
              options: FFButtonOptions(
                width: 167.0,
                height: 34.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                hoverBorderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 0.2,
                ),
                hoverTextColor: FlutterFlowTheme.of(context).tertiary,
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'homePageResponsive',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 350),
                    ),
                  },
                );
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
                iconPadding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                    ),
                elevation: 5.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 0.2,
                ),
                borderRadius: BorderRadius.circular(5.0),
                hoverBorderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 0.2,
                ),
                hoverTextColor: FlutterFlowTheme.of(context).tertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
