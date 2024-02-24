import '/components/nav_components/side_navbar_component/side_navbar_component_widget.dart';
import '/components/navigatortask_bar_widget.dart';
import '/components/new_bottom_nav_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'navigator_responsive_page_model.dart';
export 'navigator_responsive_page_model.dart';

class NavigatorResponsivePageWidget extends StatefulWidget {
  const NavigatorResponsivePageWidget({super.key});

  @override
  State<NavigatorResponsivePageWidget> createState() =>
      _NavigatorResponsivePageWidgetState();
}

class _NavigatorResponsivePageWidgetState
    extends State<NavigatorResponsivePageWidget> {
  late NavigatorResponsivePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavigatorResponsivePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  Flexible(
                    child: Container(
                      width: 393.0,
                      height: 759.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 393.0,
                            height: 625.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://picsum.photos/seed/151/600',
                                width: 300.0,
                                height: 580.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 393.0,
                            height: 44.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: wrapWithModel(
                              model: _model.navigatortaskBarModel,
                              updateCallback: () => setState(() {}),
                              child: NavigatortaskBarWidget(
                                availableBtnText: 'Available Units 108',
                                filterBtnText: 'Filter',
                                listBtnText: 'List',
                                icon: FaIcon(
                                  FontAwesomeIcons.longArrowAltLeft,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                                filterActionBtn: () async {
                                  context.pushNamed(
                                    'navigatorFilterPage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.bottomToTop,
                                        duration: Duration(milliseconds: 300),
                                      ),
                                    },
                                  );
                                },
                                availableActionBtn: () async {
                                  context.pushNamed(
                                    'navigatorAvailablePage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.bottomToTop,
                                        duration: Duration(milliseconds: 300),
                                      ),
                                    },
                                  );
                                },
                                listActionBtn: () async {
                                  context.pushNamed(
                                    'navigatorListPage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.bottomToTop,
                                        duration: Duration(milliseconds: 300),
                                      ),
                                    },
                                  );
                                },
                                backArrowActionBtn: () async {
                                  context.pushNamed(
                                    'navigatorResponsivePage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.topToBottom,
                                        duration: Duration(milliseconds: 300),
                                      ),
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: 393.0,
                            height: 80.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: wrapWithModel(
                              model: _model.newBottomNavComponentModel,
                              updateCallback: () => setState(() {}),
                              child: NewBottomNavComponentWidget(
                                selectedPageIndex: 2,
                                hidden: false,
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 1.0)),
                      ),
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Container(
                    width: 852.0,
                    height: 360.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 710.0,
                          height: 360.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1503951458645-643d53bfd90f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNHx8YnVpbGRpbmdzfGVufDB8fHx8MTcwNjc5MTkxMHww&ixlib=rb-4.0.3&q=80&w=1080',
                                  width: 745.0,
                                  height: 393.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 10.0, 0.0),
                                  child: Container(
                                    width: 226.0,
                                    height: 95.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(5.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed(
                                                  'navigatorFilterPage',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .rightToLeft,
                                                      duration: Duration(
                                                          milliseconds: 350),
                                                    ),
                                                  },
                                                );
                                              },
                                              text: 'Filter',
                                              icon: Icon(
                                                FFIcons.kslidersIcon,
                                                size: 16.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 96.0,
                                                height: 34.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                    ),
                                                elevation: 5.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 0.2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                hoverTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed(
                                                    'navigatorListPage');
                                              },
                                              text: 'List',
                                              icon: Icon(
                                                FFIcons
                                                    .k5803966ChecklistClipboardTaskTodoIcon,
                                                size: 20.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 70.0,
                                                height: 34.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                    ),
                                                elevation: 5.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 0.2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                hoverTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed(
                                                  'navigatorResponsivePage',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .leftToRight,
                                                      duration: Duration(
                                                          milliseconds: 350),
                                                    ),
                                                  },
                                                );
                                              },
                                              text: '',
                                              icon: FaIcon(
                                                FontAwesomeIcons.arrowLeft,
                                                size: 22.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 34.0,
                                                height: 34.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            5.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                    ),
                                                elevation: 5.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 0.2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                hoverTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                          ],
                                        ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            context.pushNamed(
                                              'navigatorAvailablePage',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );
                                          },
                                          text: 'Available Units 108',
                                          options: FFButtonOptions(
                                            width: 208.0,
                                            height: 33.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                            elevation: 5.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 0.2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            hoverColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            hoverBorderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 0.2,
                                            ),
                                            hoverTextColor:
                                                FlutterFlowTheme.of(context)
                                                    .tertiary,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 80.0,
                          height: 360.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: wrapWithModel(
                            model: _model.sideNavbarComponentModel,
                            updateCallback: () => setState(() {}),
                            child: SideNavbarComponentWidget(),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
