import 'package:bilsoft_quiz_app/core/constants/asseth_path.dart';
import 'package:bilsoft_quiz_app/core/shared_widgets/app_field_button.dart';
import 'package:bilsoft_quiz_app/feature/widgets/test_finishing_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TestFinishPage extends StatelessWidget {
  const TestFinishPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body:TestFinishBody()
    );
  }
}

