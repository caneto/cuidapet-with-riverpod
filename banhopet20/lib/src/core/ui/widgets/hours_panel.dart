
import 'package:banhopet20/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

class HoursPanel extends StatelessWidget {
  final int startTime;
  final int endTime;

  const HoursPanel({super.key, required this.startTime, required this.endTime});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Selecione os horários de atendimento',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16),
          Wrap(
            runSpacing: 16,
            spacing: 8,
            children: [
              for (int i = startTime; i <= endTime; i++)
                TimeButton(
                  label: '${i.toString().padLeft(2, '0')}:00',
                ),
            ],
          )
        ],
      ),
    );
  }
}

class TimeButton extends StatelessWidget {
  final String label;
  const TimeButton({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(
          color: ColorConstants.grey,
        ),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: ColorConstants.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
