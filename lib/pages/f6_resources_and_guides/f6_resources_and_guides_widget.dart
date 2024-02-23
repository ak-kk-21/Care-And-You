import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'f6_resources_and_guides_model.dart';
export 'f6_resources_and_guides_model.dart';

class F6ResourcesAndGuidesWidget extends StatefulWidget {
  const F6ResourcesAndGuidesWidget({super.key});

  @override
  State<F6ResourcesAndGuidesWidget> createState() =>
      _F6ResourcesAndGuidesWidgetState();
}

class _F6ResourcesAndGuidesWidgetState
    extends State<F6ResourcesAndGuidesWidget> {
  late F6ResourcesAndGuidesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => F6ResourcesAndGuidesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return YoutubeFullScreenWrapper(
      child: GestureDetector(
        onTap: () => _model.unfocusNode.canRequestFocus
            ? FocusScope.of(context).requestFocus(_model.unfocusNode)
            : FocusScope.of(context).unfocus(),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/WhatsApp_Image_2024-02-15_at_5.16.13_PM.jpeg',
                  ).image,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30.0,
                                    borderWidth: 1.0,
                                    buttonSize: 60.0,
                                    icon: Icon(
                                      Icons.arrow_back_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 30.0,
                                    ),
                                    onPressed: () async {
                                      context.pushNamed('d4_afterWork');
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    70.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Resources',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                            ].addToStart(const SizedBox(width: 20.0)),
                          ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed('guides');
                          },
                          child: Container(
                            width: 106.0,
                            height: 30.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2.0,
                              ),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Guides',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 10.0),
                          child: FlutterFlowYoutubePlayer(
                            url:
                                'https://youtu.be/kid7lRjX_X4?si=YFrwXid-BxA7zlL-',
                            width: 360.0,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: FlutterFlowYoutubePlayer(
                            url:
                                'https://youtu.be/eAc4dTLvbRk?si=XyiHx4Jm97dkifo_',
                            width: 360.0,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: FlutterFlowYoutubePlayer(
                            url:
                                'https://youtu.be/3V-pYCGx0C4?si=ulU2xCWqcxbqrkfu',
                            width: 360.0,
                            autoPlay: false,
                            looping: true,
                            mute: false,
                            showControls: true,
                            showFullScreen: true,
                            strictRelatedVideos: false,
                          ),
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
