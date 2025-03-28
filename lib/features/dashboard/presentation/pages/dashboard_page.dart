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
            if (state is HealthStateLoaded) {
              final sleep = state.sleep;

              return Column(
                children: [
                  TextButton(
                    onPressed: () {
                      context.read<HealthCubit>().fetchHealthData(
                            customStart: DateTime(2025, 03, 22),
                            customEnd: DateTime(2025, 03, 25),
                          );
                    },
                    child: Text('Fetch more data 22 - 25'),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<HealthCubit>().fetchHealthData(
                            customStart: DateTime(2025, 03, 23),
                            customEnd: DateTime(2025, 03, 26),
                          );
                    },
                    child: Text('Fetch more data 23 - 26'),
                  ),
                  Column(
                    spacing: 8,
                    children: sleep
                        .map(
                          (e) => Card(
                            color: Colors.blue,
                            child: Text(e.toString()),
                          ),
                        )
                        .toList(),
                  ),
                ],
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
