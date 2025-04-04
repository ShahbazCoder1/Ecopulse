import '/auth/firebase_auth/auth_util.dart';
import '../../flutter_sh/flutter_icon_button.dart';
import '../../flutter_sh/flutter_theme.dart';
import '../../flutter_sh/flutter_sh_util.dart';
import '../../flutter_sh/flutter_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'forgot_widget.dart' show ForgotWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotModel extends FlutterFlowModel<ForgotWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
