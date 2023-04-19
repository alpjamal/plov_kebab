import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';
import '../../utils/constants.dart';
import 'global_widgets/container.dart';

class BranchesScreen extends StatelessWidget {
  const BranchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: LocaleText(ProjectLocales.branches)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomContainer(
              width: double.infinity,
              margin: EdgeInsets.only(top: ProjectGap.main),
              child: Column(children: [
                ...List.generate(
                  10,
                  (index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 80,
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Image.asset(ProjectIcon.splash),
                            title: Text('Address', style: ProjectTextStyle.input),
                            subtitle: Text('Description', style: ProjectTextStyle.description),
                            trailing: Icon(Icons.arrow_forward_ios, size: 18),
                          ),
                        ),
                        Divider(),
                      ],
                    );
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
