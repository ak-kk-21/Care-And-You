import '/flutter_flow/flutter_flow_util.dart';
import 'b2_sign_up_page_widget.dart' show B2SignUpPageWidget;
import 'package:flutter/material.dart';

class B2SignUpPageModel extends FlutterFlowModel<B2SignUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField_1 widget.
  FocusNode? textField1FocusNode;
  TextEditingController? textField1Controller;
  String? Function(BuildContext, String?)? textField1ControllerValidator;
  // State field(s) for TextField_2 widget.
  FocusNode? textField2FocusNode;
  TextEditingController? textField2Controller;
  String? Function(BuildContext, String?)? textField2ControllerValidator;
  // State field(s) for TextField_3 widget.
  final textField3Key = GlobalKey();
  FocusNode? textField3FocusNode;
  TextEditingController? textField3Controller;
  String? textField3SelectedOption;
  late bool textField3Visibility;
  String? Function(BuildContext, String?)? textField3ControllerValidator;
  // State field(s) for TextField_4 widget.
  FocusNode? textField4FocusNode;
  TextEditingController? textField4Controller;
  late bool textField4Visibility;
  String? Function(BuildContext, String?)? textField4ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textField3Visibility = false;
    textField4Visibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textField1FocusNode?.dispose();
    textField1Controller?.dispose();

    textField2FocusNode?.dispose();
    textField2Controller?.dispose();

    textField3FocusNode?.dispose();

    textField4FocusNode?.dispose();
    textField4Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
