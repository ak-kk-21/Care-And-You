import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'a1_intro_page_model.dart';
export 'a1_intro_page_model.dart';

class A1IntroPageWidget extends StatefulWidget {
  const A1IntroPageWidget({super.key});

  @override
  State<A1IntroPageWidget> createState() => _A1IntroPageWidgetState();
}

class _A1IntroPageWidgetState extends State<A1IntroPageWidget>
    with TickerProviderStateMixin {
  late A1IntroPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'lottieAnimationOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.elasticOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ShimmerEffect(
          curve: Curves.easeInOut,
          delay: 1800.ms,
          duration: 600.ms,
          color: const Color(0x80FFFFFF),
          angle: 0.524,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => A1IntroPageModel());
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
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('b2_signUpPage');
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 100.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 120.0, 0.0, 0.0),
                          child: Lottie.network(
                            'https://lottie.host/05b40eed-1433-4bfa-be78-98e55dac992d/gib1AJbhpX.json',
                            width: 1872.0,
                            height: 146.0,
                            fit: BoxFit.fitWidth,
                            animate: true,
                          ).animateOnPageLoad(animationsMap[
                              'lottieAnimationOnPageLoadAnimation']!),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 180.0, 0.0, 0.0),
                        child: Text(
                          'You take care of them, and we take care of you.',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF4B986C),
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation']!),
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
