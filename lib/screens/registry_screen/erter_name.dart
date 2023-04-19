import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_locales/flutter_locales.dart';
import 'package:plov_kebab/data/bloc/auth/auth_bloc.dart';
import 'package:plov_kebab/screens/global_widgets/container.dart';
import 'package:plov_kebab/utils/constants.dart';

import '../global_widgets/button.dart';

class RegistryName extends StatelessWidget {
  const RegistryName({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController();
    String phone = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is CustomerRegisterSuccessState) {
            Navigator.of(context).pushNamed(ProjectRoute.registryGetCode);
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
                  LocaleText(ProjectLocales.name, style: ProjectTextStyle.input),
                  SizedBox(height: 8),
                  TextField(
                    controller: nameController,
                    autofocus: true,
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomButton(
              title: context.localeString(ProjectLocales.conTinue),
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add(RegisterCustomer(nameController.text, phone));
              },
            ),
          ],
        ),
      ),
    );
  }
}
