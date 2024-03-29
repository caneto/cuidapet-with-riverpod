import 'package:banhopet20/src/core/ui/widgets/hours_panel.dart';
import 'package:banhopet20/src/core/ui/widgets/weekdays_panel.dart';

import 'package:flutter/material.dart';

class BarbershopRegisterPage extends StatelessWidget {
  const BarbershopRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Estabelecimento'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 2),
              TextFormField(
                decoration: const InputDecoration(label: Text('Nome')),
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('E-mail'),
                ),
              ),
              const SizedBox(height: 24),
              const WeekdaysPanel(),
              const SizedBox(height: 24),
              const HoursPanel(
                startTime: 6,
                endTime: 23,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                ),
                onPressed: () {},
                child: const Text(
                  'Cadastrar Estabelecimento',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
