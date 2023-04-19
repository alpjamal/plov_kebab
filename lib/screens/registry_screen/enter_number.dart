import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/data/bloc/auth/auth_bloc.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';
import 'package:plov_kebab/utils/constants.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../global_widgets/button.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController numberController = TextEditingController(text: '+998 ');
    final formKey = GlobalKey<FormState>();

    final maskFormatter = MaskTextInputFormatter(
      initialText: '+998 ',
      mask: '+998 ## ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is CustomerExistState) {
            Navigator.of(context).pushNamed(ProjectRoute.registryEnterCode, arguments: {'phone': state.customer.phone});
          } else if (state is CustomerNotFoundState) {
            Navigator.of(context).pushNamed(ProjectRoute.registryEnterName, arguments: state.phone);
          }
        },
        child: Column(
          children: [
            CustomContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LocaleText(ProjectLocales.registration, style: ProjectTextStyle.registry),
                  SizedBox(height: 20),
                  LocaleText(ProjectLocales.number, style: ProjectTextStyle.input),
                  SizedBox(height: 8),
                  Form(
                    key: formKey,
                    child: TextFormField(
                      controller: numberController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [maskFormatter],
                      autofocus: true,
                      validator: (value) {
                        if (value!.length != 17) {
                          return 'Enter valid number';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomButton(
              title: context.localeString(ProjectLocales.conTinue),
              onPressed: () {
                String finalNumber = '+998${maskFormatter.getUnmaskedText()}';
                if (formKey.currentState!.validate()) {
                  BlocProvider.of<AuthBloc>(context).add(CheckCustomer(finalNumber));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
