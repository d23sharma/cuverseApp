import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'with_logo_spash_screen_model.dart';
export 'with_logo_spash_screen_model.dart';

class WithLogoSpashScreenWidget extends StatefulWidget {
  const WithLogoSpashScreenWidget({super.key});

  @override
  State<WithLogoSpashScreenWidget> createState() =>
      _WithLogoSpashScreenWidgetState();
}

class _WithLogoSpashScreenWidgetState extends State<WithLogoSpashScreenWidget> {
  late WithLogoSpashScreenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WithLogoSpashScreenModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Container(
          width: 238.0,
          height: 176.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0),
              bottomRight: Radius.circular(15.0),
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
          ),
          child: MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: Visibility(
              visible: _model.mouseRegionHovered2 ?? true,
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).tertiary,
                    width: 5.0,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SvgPicture.network(
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/cuverse-demo-se9tp7/assets/nluc3onlrfwj/withLogo.svg',
                        width: 76.0,
                        height: 75.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      'With logo',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).tertiary,
                            fontSize: 20.0,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            onEnter: ((event) async {
              setState(() => _model.mouseRegionHovered2 = true);
            }),
            onExit: ((event) async {
              setState(() => _model.mouseRegionHovered2 = false);
            }),
          ),
        ),
      ),
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered1 = true);
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered1 = false);
      }),
    );
  }
}
