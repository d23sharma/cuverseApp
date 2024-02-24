import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'with_logosplash_screen_box_model.dart';
export 'with_logosplash_screen_box_model.dart';

class WithLogosplashScreenBoxWidget extends StatefulWidget {
  const WithLogosplashScreenBoxWidget({super.key});

  @override
  State<WithLogosplashScreenBoxWidget> createState() =>
      _WithLogosplashScreenBoxWidgetState();
}

class _WithLogosplashScreenBoxWidgetState
    extends State<WithLogosplashScreenBoxWidget> {
  late WithLogosplashScreenBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WithLogosplashScreenBoxModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed(
          'overviewWithlogoPage',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 300),
            ),
          },
        );
      },
      child: Container(
        width: 238.0,
        height: 176.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).info,
          borderRadius: BorderRadius.circular(26.0),
          border: Border.all(
            color: Color(0xFFDC6641),
            width: 3.0,
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
                height: 76.0,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              'With Logo',
              style: FlutterFlowTheme.of(context).displayMedium.override(
                    fontFamily: 'Inter fonts',
                    color: FlutterFlowTheme.of(context).tertiary,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    useGoogleFonts: false,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
