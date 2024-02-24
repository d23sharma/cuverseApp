import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_bottom_nav_component_model.dart';
export 'new_bottom_nav_component_model.dart';

class NewBottomNavComponentWidget extends StatefulWidget {
  const NewBottomNavComponentWidget({
    super.key,
    int? selectedPageIndex,
    bool? hidden,
  })  : this.selectedPageIndex = selectedPageIndex ?? 1,
        this.hidden = hidden ?? false;

  final int selectedPageIndex;
  final bool hidden;

  @override
  State<NewBottomNavComponentWidget> createState() =>
      _NewBottomNavComponentWidgetState();
}

class _NewBottomNavComponentWidgetState
    extends State<NewBottomNavComponentWidget> with TickerProviderStateMixin {
  late NewBottomNavComponentModel _model;

  final animationsMap = {
    'dividerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewBottomNavComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
      child: Container(
        width: 383.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 0.2,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 8.0,
                      buttonSize: 50.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        FFIcons.koverview2,
                        color: widget.selectedPageIndex == 1
                            ? FlutterFlowTheme.of(context).tertiary
                            : FlutterFlowTheme.of(context).primaryText,
                        size: 40.0,
                      ),
                      onPressed: () async {
                        context.goNamed(
                          'overviewWithlogoPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
                if (widget.selectedPageIndex == 1)
                  SizedBox(
                    width: 40.0,
                    child: Divider(
                      height: 5.0,
                      thickness: 3.0,
                      color: widget.selectedPageIndex == 1
                          ? FlutterFlowTheme.of(context).tertiary
                          : FlutterFlowTheme.of(context).primaryText,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation1']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 8.0,
                      buttonSize: 50.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        FFIcons.knavigator3,
                        color: widget.selectedPageIndex == 2
                            ? FlutterFlowTheme.of(context).secondaryText
                            : FlutterFlowTheme.of(context).primaryText,
                        size: 45.0,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'navigatorResponsivePage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
                if (widget.selectedPageIndex == 2)
                  SizedBox(
                    width: 50.0,
                    child: Divider(
                      height: 5.0,
                      thickness: 3.0,
                      color: widget.selectedPageIndex == 2
                          ? FlutterFlowTheme.of(context).secondaryText
                          : FlutterFlowTheme.of(context).primaryText,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation2']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 3 ? 1.0 : 0.5,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 8.0,
                      buttonSize: 52.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        FFIcons.klocation2,
                        color: widget.selectedPageIndex == 3
                            ? FlutterFlowTheme.of(context).secondaryText
                            : FlutterFlowTheme.of(context).primaryText,
                        size: 45.0,
                      ),
                      onPressed: () async {
                        context.goNamed(
                          'locationPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
                if (widget.selectedPageIndex == 3)
                  SizedBox(
                    width: 45.0,
                    child: Divider(
                      height: 5.0,
                      thickness: 3.0,
                      color: widget.selectedPageIndex == 3
                          ? FlutterFlowTheme.of(context).secondaryText
                          : FlutterFlowTheme.of(context).primaryText,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation3']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 8.0,
                      buttonSize: 54.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        FFIcons.kamenities2,
                        color: widget.selectedPageIndex == 4
                            ? FlutterFlowTheme.of(context).secondaryText
                            : FlutterFlowTheme.of(context).primaryText,
                        size: 45.0,
                      ),
                      onPressed: () async {
                        context.goNamed(
                          'AmenitiesPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
                if (widget.selectedPageIndex == 4)
                  SizedBox(
                    width: 50.0,
                    child: Divider(
                      height: 5.0,
                      thickness: 3.0,
                      color: widget.selectedPageIndex == 4
                          ? FlutterFlowTheme.of(context).secondaryText
                          : FlutterFlowTheme.of(context).primaryText,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation4']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 5 ? 1.0 : 0.5,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 8.0,
                      buttonSize: 48.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        FFIcons.kgallery2,
                        color: widget.selectedPageIndex == 5
                            ? FlutterFlowTheme.of(context).secondaryText
                            : FlutterFlowTheme.of(context).primaryText,
                        size: 45.0,
                      ),
                      onPressed: () async {
                        context.goNamed(
                          'galleryPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                ),
                if (widget.selectedPageIndex == 5)
                  SizedBox(
                    width: 45.0,
                    child: Divider(
                      height: 5.0,
                      thickness: 3.0,
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation5']!),
              ],
            ),
          ].divide(SizedBox(width: 10.0)).around(SizedBox(width: 10.0)),
        ),
      ),
    );
  }
}
