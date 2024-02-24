import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bottom_portrait_model.dart';
export 'nav_bottom_portrait_model.dart';

class NavBottomPortraitWidget extends StatefulWidget {
  const NavBottomPortraitWidget({super.key});

  @override
  State<NavBottomPortraitWidget> createState() =>
      _NavBottomPortraitWidgetState();
}

class _NavBottomPortraitWidgetState extends State<NavBottomPortraitWidget> {
  late NavBottomPortraitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBottomPortraitModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      child: Container(
        width: 80.0,
        height: 393.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 0.2,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'overviewWithlogoPage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 350),
                    ),
                  },
                );
              },
              text: '',
              icon: Icon(
                FFIcons.koverview2,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 45.0,
              ),
              options: FFButtonOptions(
                width: 68.0,
                height: 64.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
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
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'navigatorResponsivePage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 350),
                    ),
                  },
                );
              },
              text: '',
              icon: Icon(
                FFIcons.knavigator3,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 50.0,
              ),
              options: FFButtonOptions(
                width: 68.0,
                height: 64.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
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
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'locationPage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 350),
                    ),
                  },
                );
              },
              text: '',
              icon: Icon(
                FFIcons.klocation2,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 45.0,
              ),
              options: FFButtonOptions(
                width: 68.0,
                height: 64.0,
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                iconPadding:
                    EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
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
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'AmenitiesPage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 350),
                    ),
                  },
                );
              },
              text: '',
              icon: Icon(
                FFIcons.kamenities2,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 45.0,
              ),
              options: FFButtonOptions(
                width: 68.0,
                height: 64.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
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
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'galleryPage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.rightToLeft,
                      duration: Duration(milliseconds: 350),
                    ),
                  },
                );
              },
              text: '',
              icon: Icon(
                FFIcons.kgallery2,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 45.0,
              ),
              options: FFButtonOptions(
                width: 68.0,
                height: 64.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding:
                    EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
