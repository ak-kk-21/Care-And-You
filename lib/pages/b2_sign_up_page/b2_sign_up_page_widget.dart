import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'b2_sign_up_page_model.dart';
export 'b2_sign_up_page_model.dart';

class B2SignUpPageWidget extends StatefulWidget {
  const B2SignUpPageWidget({super.key});

  @override
  State<B2SignUpPageWidget> createState() => _B2SignUpPageWidgetState();
}

class _B2SignUpPageWidgetState extends State<B2SignUpPageWidget>
    with TickerProviderStateMixin {
  late B2SignUpPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'columnOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
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
    'textFieldOnPageLoadAnimation1': AnimationInfo(
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
    'textFieldOnPageLoadAnimation2': AnimationInfo(
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
    'textFieldOnPageLoadAnimation3': AnimationInfo(
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
    'textFieldOnPageLoadAnimation4': AnimationInfo(
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
    'buttonOnPageLoadAnimation': AnimationInfo(
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
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => B2SignUpPageModel());

    _model.textField1Controller ??= TextEditingController();
    _model.textField1FocusNode ??= FocusNode();

    _model.textField2Controller ??= TextEditingController();
    _model.textField2FocusNode ??= FocusNode();

    _model.textField3Controller ??= TextEditingController();

    _model.textField4Controller ??= TextEditingController();
    _model.textField4FocusNode ??= FocusNode();
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 150.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: GradientText(
                          'Lets create your account of\n happiness',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: 'Urbanist',
                                color: const Color(0xFF0B191E),
                                fontSize: 30.0,
                                fontWeight: FontWeight.normal,
                              ),
                          colors: [
                            FlutterFlowTheme.of(context).primary,
                            FlutterFlowTheme.of(context).error
                          ],
                          gradientDirection: GradientDirection.ltr,
                          gradientType: GradientType.linear,
                        ).animateOnPageLoad(
                            animationsMap['textOnPageLoadAnimation']!),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 20.0, 16.0, 0.0),
                          child: TextFormField(
                            controller: _model.textField1Controller,
                            focusNode: _model.textField1FocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Name',
                              hintText: 'Enter your name',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF0B191E),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF0B191E),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0x00000000),
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: const Color(0xFF0B191E),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                            textAlign: TextAlign.start,
                            validator: _model.textField1ControllerValidator
                                .asValidator(context),
                          ).animateOnPageLoad(
                              animationsMap['textFieldOnPageLoadAnimation1']!),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: TextFormField(
                          controller: _model.textField2Controller,
                          focusNode: _model.textField2FocusNode,
                          onChanged: (_) => EasyDebounce.debounce(
                            '_model.textField2Controller',
                            const Duration(milliseconds: 2000),
                            () => setState(() {}),
                          ),
                          autofillHints: const [AutofillHints.email],
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email ID',
                            hintText: 'Enter your email',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: const Color(0xFF0B191E),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF0B191E),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 20.0),
                            suffixIcon:
                                _model.textField2Controller!.text.isNotEmpty
                                    ? InkWell(
                                        onTap: () async {
                                          _model.textField2Controller?.clear();
                                          setState(() {});
                                        },
                                        child: const Icon(
                                          Icons.clear,
                                          color: Color(0xFF384E58),
                                          size: 22.0,
                                        ),
                                      )
                                    : null,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF0B191E),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          validator: _model.textField2ControllerValidator
                              .asValidator(context),
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation2']!),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Autocomplete<String>(
                          initialValue: const TextEditingValue(),
                          optionsBuilder: (textEditingValue) {
                            if (textEditingValue.text == '') {
                              return const Iterable<String>.empty();
                            }
                            return ['Option 1'].where((option) {
                              final lowercaseOption = option.toLowerCase();
                              return lowercaseOption.contains(
                                  textEditingValue.text.toLowerCase());
                            });
                          },
                          optionsViewBuilder: (context, onSelected, options) {
                            return AutocompleteOptionsList(
                              textFieldKey: _model.textField3Key,
                              textController: _model.textField3Controller!,
                              options: options.toList(),
                              onSelected: onSelected,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              textHighlightStyle: const TextStyle(),
                              elevation: 4.0,
                              optionBackgroundColor:
                                  FlutterFlowTheme.of(context)
                                      .primaryBackground,
                              optionHighlightColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              maxHeight: 200.0,
                            );
                          },
                          onSelected: (String selection) {
                            setState(() =>
                                _model.textField3SelectedOption = selection);
                            FocusScope.of(context).unfocus();
                          },
                          fieldViewBuilder: (
                            context,
                            textEditingController,
                            focusNode,
                            onEditingComplete,
                          ) {
                            _model.textField3FocusNode = focusNode;

                            _model.textField3Controller = textEditingController;
                            return TextFormField(
                              key: _model.textField3Key,
                              controller: textEditingController,
                              focusNode: focusNode,
                              onEditingComplete: onEditingComplete,
                              obscureText: !_model.textField3Visibility,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter your password',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: const Color(0xFF0B191E),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFF0B191E),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => _model.textField3Visibility =
                                        !_model.textField3Visibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.textField3Visibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: const Color(0xFF384E58),
                                    size: 22.0,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF0B191E),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              validator: _model.textField3ControllerValidator
                                  .asValidator(context),
                            );
                          },
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation3']!),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: TextFormField(
                          controller: _model.textField4Controller,
                          focusNode: _model.textField4FocusNode,
                          obscureText: !_model.textField4Visibility,
                          decoration: InputDecoration(
                            labelText: 'Cpassword',
                            hintText: 'Confirm your password',
                            hintStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: const Color(0xFF0B191E),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF0B191E),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => _model.textField4Visibility =
                                    !_model.textField4Visibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                _model.textField4Visibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: const Color(0xFF384E58),
                                size: 22.0,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF0B191E),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          validator: _model.textField4ControllerValidator
                              .asValidator(context),
                        ).animateOnPageLoad(
                            animationsMap['textFieldOnPageLoadAnimation4']!),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          if (_model.textField3Controller.text !=
                              _model.textField4Controller.text) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Passwords don\'t match!',
                                ),
                              ),
                            );
                            return;
                          }

                          final user = await authManager.createAccountWithEmail(
                            context,
                            _model.textField2Controller.text,
                            _model.textField3Controller.text,
                          );
                          if (user == null) {
                            return;
                          }

                          context.pushNamedAuth('c3_HomePage', context.mounted);
                        },
                        text: 'Sign Up',
                        options: FFButtonOptions(
                          width: 200.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF4B986C),
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                          elevation: 3.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['buttonOnPageLoadAnimation']!),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('b3_signInPage');
                        },
                        child: Text(
                          'Sign In Instead',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 20.0)),
                  ),
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation']!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
