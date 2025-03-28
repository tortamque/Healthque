import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.dashboard),
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (context, state) {
          final user = state.user;

          return Text(user.toString());
        },
      ),
    );
  }
}
