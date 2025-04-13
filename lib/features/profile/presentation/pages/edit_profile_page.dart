import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:toastification/toastification.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _waterConsumptionController = TextEditingController();
  final TextEditingController _caloriesController = TextEditingController();
  final TextEditingController _desiredStepsController = TextEditingController();

  Gender? _selectedGender;

  @override
  void initState() {
    super.initState();
    final user = context.read<UserCubit>().state.user;
    _nameController.text = user.name ?? '';
    _surnameController.text = user.surname ?? '';
    _ageController.text = user.age?.toString() ?? '';
    _heightController.text = user.height?.toString() ?? '';
    _weightController.text = user.weight?.toString() ?? '';
    _waterConsumptionController.text = user.waterConsumption?.toString() ?? '';
    _caloriesController.text = user.caloriesBurnInOneDay?.toString() ?? '';
    _desiredStepsController.text = user.desiredSteps?.toString() ?? '';
    _selectedGender = user.gender;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.editProfile),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: context.strings.name,
                        prefixIcon: const Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return context.strings.fieldCannotBeEmpty;
                        }
                        return null;
                      },
                    ),
                    const Gap(12),
                    TextFormField(
                      controller: _surnameController,
                      decoration: InputDecoration(
                        labelText: context.strings.surname,
                        prefixIcon: const Icon(Icons.person_outline),
                      ),
                    ),
                    const Gap(12),
                    TextFormField(
                      controller: _ageController,
                      decoration: InputDecoration(
                        labelText: context.strings.age,
                        prefixIcon: const Icon(Icons.cake),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return context.strings.fieldCannotBeEmpty;
                        }
                        if (int.tryParse(value.trim()) == null) {
                          return context.strings.invalidNumber;
                        }
                        return null;
                      },
                    ),
                    const Gap(12),
                    DropdownButtonFormField<Gender>(
                      value: _selectedGender,
                      decoration: InputDecoration(
                        labelText: context.strings.gender,
                        prefixIcon: const Icon(Icons.wc),
                      ),
                      style: context.textTheme.bodyMedium,
                      items: [
                        DropdownMenuItem(
                          value: Gender.male,
                          child: Text(context.strings.male),
                        ),
                        DropdownMenuItem(
                          value: Gender.female,
                          child: Text(context.strings.female),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _selectedGender = value;
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return context.strings.fieldCannotBeEmpty;
                        }
                        return null;
                      },
                    ),
                    const Gap(12),
                    TextFormField(
                      controller: _heightController,
                      decoration: InputDecoration(
                        labelText: context.strings.height,
                        prefixIcon: const Icon(Icons.straighten),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return context.strings.fieldCannotBeEmpty;
                        }
                        if (double.tryParse(value.trim()) == null) {
                          return context.strings.invalidNumber;
                        }
                        return null;
                      },
                    ),
                    const Gap(12),
                    TextFormField(
                      controller: _weightController,
                      decoration: InputDecoration(
                        labelText: context.strings.weight,
                        prefixIcon: const Icon(Icons.line_weight),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(decimal: true),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return context.strings.fieldCannotBeEmpty;
                        }
                        if (double.tryParse(value.trim()) == null) {
                          return context.strings.invalidNumber;
                        }
                        return null;
                      },
                    ),
                    const Gap(12),
                    TextFormField(
                      controller: _waterConsumptionController,
                      decoration: InputDecoration(
                        labelText: context.strings.waterConsumption,
                        prefixIcon: const Icon(Icons.local_drink),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return context.strings.fieldCannotBeEmpty;
                        }
                        if (int.tryParse(value.trim()) == null) {
                          return context.strings.invalidNumber;
                        }
                        return null;
                      },
                    ),
                    const Gap(12),
                    TextFormField(
                      controller: _caloriesController,
                      decoration: InputDecoration(
                        labelText: context.strings.caloriesBurnInOneDay,
                        prefixIcon: const Icon(Icons.whatshot),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return context.strings.fieldCannotBeEmpty;
                        }
                        if (int.tryParse(value.trim()) == null) {
                          return context.strings.invalidNumber;
                        }
                        return null;
                      },
                    ),
                    const Gap(12),
                    TextFormField(
                      controller: _desiredStepsController,
                      decoration: InputDecoration(
                        labelText: context.strings.desiredSteps,
                        prefixIcon: const Icon(Icons.directions_walk),
                      ),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return context.strings.fieldCannotBeEmpty;
                        }
                        if (int.tryParse(value.trim()) == null) {
                          return context.strings.invalidNumber;
                        }
                        return null;
                      },
                    ),
                    const Gap(24),
                    ElevatedButton(
                      onPressed: _saveProfile,
                      child: Text(context.strings.saveProfile),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _saveProfile() async {
    if (!_formKey.currentState!.validate()) return;

    final name = _nameController.text.trim();
    final surname = _surnameController.text.trim();
    final age = int.parse(_ageController.text.trim());
    final height = double.parse(_heightController.text.trim());
    final weight = double.parse(_weightController.text.trim());
    final waterConsumption = int.parse(_waterConsumptionController.text.trim());
    final caloriesBurnInOneDay = int.parse(_caloriesController.text.trim());
    final desiredSteps = int.parse(_desiredStepsController.text.trim());
    final gender = _selectedGender!;

    final userCubit = context.read<UserCubit>();

    userCubit.saveNameAndSurname(
      name: name,
      surname: surname.isEmpty ? null : surname,
    );
    userCubit.saveAgeWeightHeightGender(
      age: age,
      height: height,
      weight: weight,
      gender: gender,
    );
    userCubit.saveWaterConsumption(waterConsumption: waterConsumption);
    userCubit.saveCaloriesBurnInOneDay(caloriesBurnInOneDay: caloriesBurnInOneDay);
    userCubit.saveDesiredSteps(desiredSteps: desiredSteps);

    try {
      await userCubit.storeUser();
      if (!mounted) return;
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.success,
        title: Text(context.strings.profileUpdated),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => const SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
      context.pop();
    } catch (e) {
      if (!mounted) return;
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.error,
        title: Text(context.strings.profileUpdateFailed),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => const SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _ageController.dispose();
    _heightController.dispose();
    _weightController.dispose();
    _waterConsumptionController.dispose();
    _caloriesController.dispose();
    _desiredStepsController.dispose();
    super.dispose();
  }
}
