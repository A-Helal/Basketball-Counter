import 'package:basketball_counter_app/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Points extends StatelessWidget {
  const Points({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final cubit = BlocProvider.of<CounterCubit>;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Text('Points Counter'),
          ),
          body: Column(
            children: [
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          'Real madrid fc',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 28),
                          maxLines: 2,
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                          style: const TextStyle(fontSize: 150),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increment(pointsNumber: 1, team: 'A');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              minimumSize: const Size(150, 50)),
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increment(pointsNumber: 2, team: 'A');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              minimumSize: const Size(150, 50)),
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increment(pointsNumber: 3, team: 'A');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              minimumSize: const Size(150, 50)),
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  const SizedBox(
                      height: 500,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      )),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Arsenal f.c',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 28),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                          style: const TextStyle(fontSize: 150),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increment(pointsNumber: 1, team: 'B');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              minimumSize: const Size(150, 50)),
                          child: const Text(
                            'Add 1 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increment(pointsNumber: 2, team: 'B');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              minimumSize: const Size(150, 50)),
                          child: const Text(
                            'Add 2 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .increment(pointsNumber: 3, team: 'B');
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber,
                              minimumSize: const Size(150, 50)),
                          child: const Text(
                            'Add 3 Point',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).resetPoints();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    minimumSize: const Size(150, 50)),
                child: const Text(
                  'Reset',style: TextStyle(fontSize: 18),
                ),
              ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}
