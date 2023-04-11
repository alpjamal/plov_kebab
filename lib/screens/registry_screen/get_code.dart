import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../utils/constants.dart';

class GetOtpCodeScreen extends StatelessWidget {
  const GetOtpCodeScreen({super.key});
  static const routeName = '/get-otp-code-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(ProjectGap.main),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LocaleText(ProjectLocales.registration, style: ProjectTextStyle.registry),
            SizedBox(height: 16),
            OTPTextField(
              controller: OtpFieldController(),
              keyboardType: TextInputType.none,
              length: 6,
              width: MediaQuery.of(context).size.width,
              textFieldAlignment: MainAxisAlignment.spaceBetween,
              fieldStyle: FieldStyle.box,
              fieldWidth: (MediaQuery.of(context).size.width - ProjectGap.main * 2) / 6 - ProjectGap.main,
              outlineBorderRadius: 12,
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: Text(
                'timer',
                textAlign: TextAlign.center,
                style: ProjectTextStyle.input,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
              },
              child: LocaleText(ProjectLocales.conTinue, style: ProjectTextStyle.input),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
