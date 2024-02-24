import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navigatortask_bar_model.dart';
export 'navigatortask_bar_model.dart';

class NavigatortaskBarWidget extends StatefulWidget {
  const NavigatortaskBarWidget({
    super.key,
    required this.availableBtnText,
    required this.filterBtnText,
    required this.listBtnText,
    this.icon,
    required this.filterActionBtn,
    required this.availableActionBtn,
    required this.listActionBtn,
    required this.backArrowActionBtn,
  });

  final String? availableBtnText;
  final String? filterBtnText;
  final String? listBtnText;
  final Widget? icon;
  final Future Function()? filterActionBtn;
  final Future Function()? availableActionBtn;
  final Future Function()? listActionBtn;
  final Future Function()? backArrowActionBtn;

  @override
  State<NavigatortaskBarWidget> createState() => _NavigatortaskBarWidgetState();
}

class _NavigatortaskBarWidgetState extends State<NavigatortaskBarWidget> {
  late NavigatortaskBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigatortaskBarModel());
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
        height: 40.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
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
              text: 'Available Units 108',
              options: FFButtonOptions(
                width: 154.0,
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
                  'navigatorFilterPage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.bottomToTop,
                      duration: Duration(milliseconds: 300),
                    ),
                  },
                );
              },
              text: widget.filterBtnText!,
              icon: Icon(
                FFIcons.kslidersIcon,
                size: 18.0,
              ),
              options: FFButtonOptions(
                width: 96.0,
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
                elevation: 5.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 0.2,
                ),
                borderRadius: BorderRadius.circular(4.0),
                hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
                hoverTextColor: FlutterFlowTheme.of(context).tertiary,
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'navigatorListPage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.bottomToTop,
                      duration: Duration(milliseconds: 300),
                    ),
                  },
                );
              },
              text: widget.listBtnText!,
              icon: Icon(
                FFIcons.k5803966ChecklistClipboardTaskTodoIcon,
                size: 20.0,
              ),
              options: FFButtonOptions(
                width: 70.0,
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
                elevation: 5.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 0.2,
                ),
                borderRadius: BorderRadius.circular(4.0),
                hoverColor: FlutterFlowTheme.of(context).secondaryBackground,
                hoverTextColor: FlutterFlowTheme.of(context).tertiary,
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  'navigatorResponsivePage',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 300),
                    ),
                  },
                );
              },
              text: '',
              icon: widget.icon,
              options: FFButtonOptions(
                width: 40.0,
                height: 34.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(3.0, 0.0, 0.0, 0.0),
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
