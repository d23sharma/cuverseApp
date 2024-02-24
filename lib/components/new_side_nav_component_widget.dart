import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_side_nav_component_model.dart';
export 'new_side_nav_component_model.dart';

class NewSideNavComponentWidget extends StatefulWidget {
  const NewSideNavComponentWidget({
    super.key,
    int? selectedPageIndexVerticle,
    bool? hidden,
  })  : this.selectedPageIndexVerticle = selectedPageIndexVerticle ?? 1,
        this.hidden = hidden ?? false;

  final int selectedPageIndexVerticle;
  final bool hidden;

  @override
  State<NewSideNavComponentWidget> createState() =>
      _NewSideNavComponentWidgetState();
}

class _NewSideNavComponentWidgetState extends State<NewSideNavComponentWidget>
    with TickerProviderStateMixin {
  late NewSideNavComponentModel _model;

  final animationsMap = {
    'iconButtonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
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
          duration: 200.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
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
          duration: 200.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
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
          duration: 200.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
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
          duration: 200.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
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
    _model = createModel(context, () => NewSideNavComponentModel());
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
        width: 80.0,
        height: 360.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
            width: 0.2,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndexVerticle == 1 ? 1.0 : 0.6,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 8.0,
                      buttonSize: 55.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        FFIcons.koverview2,
                        color: widget.selectedPageIndexVerticle == 1
                            ? FlutterFlowTheme.of(context).tertiary
                            : FlutterFlowTheme.of(context).primaryText,
                        size: 45.0,
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
                    ).animateOnPageLoad(
                        animationsMap['iconButtonOnPageLoadAnimation']!),
                  ),
                ),
                if (widget.selectedPageIndexVerticle == 1)
                  SizedBox(
                    width: 45.0,
                    child: Divider(
                      height: 5.0,
                      thickness: 3.0,
                      color: widget.selectedPageIndexVerticle == 1
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
                  opacity: widget.selectedPageIndexVerticle == 2 ? 1.0 : 0.6,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 8.0,
                      buttonSize: 62.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        FFIcons.knavigator3,
                        color: widget.selectedPageIndexVerticle == 1
                            ? FlutterFlowTheme.of(context).tertiary
                            : FlutterFlowTheme.of(context).primaryText,
                        size: 50.0,
                      ),
                      onPressed: () async {
                        context.goNamed(
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
                if (widget.selectedPageIndexVerticle == 2)
                  SizedBox(
                    width: 50.0,
                    child: Divider(
                      height: 5.0,
                      thickness: 3.0,
                      color: widget.selectedPageIndexVerticle == 1
                          ? FlutterFlowTheme.of(context).tertiary
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
                  opacity: widget.selectedPageIndexVerticle == 3 ? 1.0 : 0.6,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 8.0,
                      buttonSize: 55.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        FFIcons.klocation2,
                        color: widget.selectedPageIndexVerticle == 1
                            ? FlutterFlowTheme.of(context).tertiary
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
                if (widget.selectedPageIndexVerticle == 3)
                  SizedBox(
                    width: 48.0,
                    child: Divider(
                      height: 5.0,
                      thickness: 3.0,
                      color: widget.selectedPageIndexVerticle == 1
                          ? FlutterFlowTheme.of(context).tertiary
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
                  opacity: widget.selectedPageIndexVerticle == 4 ? 1.0 : 0.6,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 8.0,
                      buttonSize: 58.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverIconColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      icon: Icon(
                        FFIcons.kamenities2,
                        color: widget.selectedPageIndexVerticle == 1
                            ? FlutterFlowTheme.of(context).tertiary
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
                if (widget.selectedPageIndexVerticle == 4)
                  SizedBox(
                    width: 48.0,
                    child: Divider(
                      height: 5.0,
                      thickness: 3.0,
                      color: widget.selectedPageIndexVerticle == 1
                          ? FlutterFlowTheme.of(context).tertiary
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
                  opacity: widget.selectedPageIndexVerticle == 5 ? 1.0 : 0.6,
                  child: FlutterFlowIconButton(
                    borderColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: 8.0,
                    buttonSize: 52.0,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    hoverColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    hoverIconColor: FlutterFlowTheme.of(context).secondaryText,
                    icon: Icon(
                      FFIcons.kgallery2,
                      color: widget.selectedPageIndexVerticle == 1
                          ? FlutterFlowTheme.of(context).tertiary
                          : FlutterFlowTheme.of(context).primaryText,
                      size: 48.0,
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
                if (widget.selectedPageIndexVerticle == 5)
                  SizedBox(
                    width: 45.0,
                    child: Divider(
                      height: 5.0,
                      thickness: 3.0,
                      color: widget.selectedPageIndexVerticle == 1
                          ? FlutterFlowTheme.of(context).tertiary
                          : FlutterFlowTheme.of(context).primaryText,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation5']!),
              ],
            ),
          ].addToEnd(SizedBox(height: 10.0)),
        ),
      ),
    );
  }
}
