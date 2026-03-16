import 'package:flutter/material.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      title: 'Recipe Card',
      theme: ThemeData
      (
        colorScheme: ColorScheme.fromSeed
        (
          seedColor: Colors.deepOrange,
          brightness: Brightness.light,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Card'),
    );
  }
}

class MyHomePage extends StatefulWidget 
{
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: SafeArea
      (
        child: Center
        (
          child: SingleChildScrollView
          (
            child: Card
            (
              clipBehavior: Clip.antiAlias,

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

              child: Column
              (
                crossAxisAlignment: CrossAxisAlignment.start,

                children: 
                [
                  Image.asset
                  (
                    'assets/643762015_122102804829273877_6353516534050585202_n.jpg',
                    width: double.infinity,
                    height: 260,
                    fit: BoxFit.cover,
                  ),

                  Padding
                  (
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),

                    child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: 
                      [
                        Text
                        (
                          'Ilocos Empanada',
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                        ),

                        const SizedBox(height: 12),

                        Row
                        (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: 
                          [
                            _InfoBadge
                            (
                              icon: Icons.schedule,
                              label: 'Prep: 15 min',
                            ),
                            _InfoBadge
                            (
                              icon: Icons.restaurant_menu,
                              label: 'Cook: 10 min',
                            ),
                            _InfoBadge
                            (
                              icon: Icons.verified,
                              label: 'Easy',
                            ),
                          ],
                        ),

                        const SizedBox(height: 16),

                        const Divider(height: 1),

                        const SizedBox(height: 12),

                        Text
                        (
                          'Ingredients',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                        ),

                        const SizedBox(height: 8),

                        Row
                        (
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: 
                          [
                            Expanded
                            (
                              child: Column
                              (
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: 
                                [
                                  Text
                                  (
                                    'Dough',
                                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                                  ),

                                  const SizedBox(height: 4),

                                  const _BulletList
                                  (
                                  items: 
                                  [
                                      '2 cups rice flour',
                                      '1/2 cup all-purpose flour',
                                      '1 cup water',
                                      '1-2 tsp Annatto powder',
                                      '1 tbsp cooking oil',
                                      'Salt',
                                  ]
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(width: 16),

                            Expanded
                            (
                              child: Column
                              (
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: 
                                [
                                  Text
                                  (
                                    'Filling',
                                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                                  ),

                                  const SizedBox(height: 4),

                                  const _BulletList
                                  (
                                  items: 
                                    [
                                      '1 cup grated green papaya',
                                      '1/2 cup mung beans',
                                      '4-6 pieces Ilocos longganisa',
                                      '4-6 raw eggs',
                                      'Salt',
                                      'Pepper',
                                    ]
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoBadge extends StatelessWidget 
{
  const _InfoBadge({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) 
  {
    return Row
    (
      children: 
      [
        Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),

        const SizedBox(width: 6),

        Text
        (
          label,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

class _BulletList extends StatelessWidget 
{
  const _BulletList({required this.items});

  final List<String> items;

  @override
  Widget build(BuildContext context) 
  {
    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,

      children: items
          .map
          (
            (item) => Padding
            (
              padding: const EdgeInsets.symmetric(vertical: 4),

              child: Row
              (
                crossAxisAlignment: CrossAxisAlignment.start,

                children: 
                [
                  const Text('• ', style: TextStyle(fontSize: 16)),
                  
                  Expanded
                  (
                    child: Text
                    (
                      item,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
