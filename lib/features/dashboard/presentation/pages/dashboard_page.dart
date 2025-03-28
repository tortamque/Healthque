import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/features/health/health.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.dashboard),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<HealthCubit, HealthState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            return Text("${state.runtimeType} $state");
          },
        ),
      ),
    );
  }
}
