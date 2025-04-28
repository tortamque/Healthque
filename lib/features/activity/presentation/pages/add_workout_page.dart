import 'package:duration_picker/duration_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/features/activity/activity.dart';
import 'package:toastification/toastification.dart';

class AddWorkoutPage extends StatefulWidget {
  const AddWorkoutPage({super.key});

  @override
  State<AddWorkoutPage> createState() => _AddWorkoutPageState();
}

class _AddWorkoutPageState extends State<AddWorkoutPage> {
  final _formKey = GlobalKey<FormState>();

  WorkoutType? _selectedWorkoutType;
  Duration _duration = const Duration(minutes: 30);
  double _intensity = 3.0;
  final TextEditingController _distanceController = TextEditingController();
  final TextEditingController _tagsController = TextEditingController();
  bool _isFavorite = false;
  int _moodRating = 3;
  final TextEditingController _notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.strings.addWorkout),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WorkoutTypeSelector(
                      selectedWorkoutType: _selectedWorkoutType,
                      onChanged: (WorkoutType? value) => setState(() => _selectedWorkoutType = value),
                    ),
                    const Gap(16),
                    DurationPickerField(
                      duration: _duration,
                      onPick: _pickDuration,
                    ),
                    const Gap(16),
                    IntensitySlider(
                      intensity: _intensity,
                      minIntensity: 1,
                      maxIntensity: 10,
                      onChanged: (value) => setState(() => _intensity = value),
                    ),
                    const Gap(16),
                    if (_selectedWorkoutType != null && _selectedWorkoutType!.needsDistance)
                      DistanceField(controller: _distanceController),
                    const Gap(16),
                    TagsField(controller: _tagsController),
                    const Gap(16),
                    FavoriteToggle(
                      isFavorite: _isFavorite,
                      onChanged: (val) => setState(() => _isFavorite = val),
                    ),
                    const Gap(16),
                    MoodRatingPicker(
                      rating: _moodRating,
                      onRatingChanged: (newRating) => setState(() => _moodRating = newRating),
                    ),
                    const Gap(16),
                    MultiLineNotesField(controller: _notesController),
                    const Gap(24),
                    Center(
                      child: ElevatedButton(
                        onPressed: _submit,
                        child: Text(context.strings.saveWorkout),
                      ),
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

  Future<void> _pickDuration() async {
    final Duration? result = await showDurationPicker(
      context: context,
      initialTime: _duration,
    );
    if (result != null) {
      setState(() {
        _duration = result;
      });
    }
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final List<String> tags = _tagsController.text.trim().isEmpty
          ? []
          : _tagsController.text.split(',').map((t) => t.trim()).where((t) => t.isNotEmpty).toList();

      final workoutData = Workout(
        workoutType: _selectedWorkoutType!,
        durationMinutes: _duration.inMinutes,
        intensity: _intensity.toInt(),
        distance: (_selectedWorkoutType?.needsDistance ?? false) && _distanceController.text.isNotEmpty
            ? double.parse(_distanceController.text)
            : null,
        tags: tags,
        isFavorite: _isFavorite,
        moodRating: _moodRating,
        notes: _notesController.text,
        createdAt: DateTime.now(),
      );

      await context.read<ActivityCubit>().addWorkout(workoutData);

      if (!mounted) return;
      toastification.show(
        context: context,
        style: ToastificationStyle.simple,
        type: ToastificationType.success,
        title: Text(context.strings.workoutSaved),
        alignment: Alignment.bottomCenter,
        closeButton: ToastCloseButton(
          buttonBuilder: (context, onClose) => SizedBox.shrink(),
        ),
        autoCloseDuration: const Duration(seconds: 3),
      );
    }
  }

  @override
  void dispose() {
    _distanceController.dispose();
    _tagsController.dispose();
    _notesController.dispose();
    super.dispose();
  }
}
