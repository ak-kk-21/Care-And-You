import '/components/basic_form_field_widget.dart';
import '/components/date_time_form_field_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'x_make_appointment_model.dart';
export 'x_make_appointment_model.dart';

class XMakeAppointmentWidget extends StatefulWidget {
  const XMakeAppointmentWidget({super.key});

  @override
  State<XMakeAppointmentWidget> createState() => _XMakeAppointmentWidgetState();
}

class _XMakeAppointmentWidgetState extends State<XMakeAppointmentWidget> {
  late XMakeAppointmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => XMakeAppointmentModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Add Event to Calendar',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: wrapWithModel(
                      model: _model.basicFormFieldModel1,
                      updateCallback: () => setState(() {}),
                      child: const BasicFormFieldWidget(
                        titleText: 'Title',
                        hintText: ' ',
                      ),
                    ),
                  ),
                  wrapWithModel(
                    model: _model.basicFormFieldModel2,
                    updateCallback: () => setState(() {}),
                    child: const BasicFormFieldWidget(
                      titleText: 'Description',
                      hintText: ' ',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.dateTimeFormFieldModel1,
                    updateCallback: () => setState(() {}),
                    child: const DateTimeFormFieldWidget(
                      titleText: 'Start Time',
                    ),
                  ),
                  wrapWithModel(
                    model: _model.dateTimeFormFieldModel2,
                    updateCallback: () => setState(() {}),
                    child: const DateTimeFormFieldWidget(
                      titleText: 'End Time',
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      _model.createdEvent = await actions.eventToJSON(
                        _model.basicFormFieldModel1.textController.text,
                        _model.basicFormFieldModel2.textController.text,
                        _model.dateTimeFormFieldModel1.datePicked!,
                        _model.dateTimeFormFieldModel2.datePicked!,
                      );
                      _model.accessToken = await actions.signInWithGoogle();
                      await actions.addEventToCalendar(
                        _model.accessToken!,
                        _model.createdEvent!,
                      );

                      setState(() {});
                    },
                    text: 'Add Event',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(
                        'c3_HomePage',
                        queryParameters: {
                          'accessToken': serializeParam(
                            '',
                            ParamType.String,
                          ),
                        }.withoutNulls,
                      );
                    },
                    text: 'Go Back',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                color: Colors.white,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(const SizedBox(height: 20.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
