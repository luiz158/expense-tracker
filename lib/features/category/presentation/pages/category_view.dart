import 'package:expense_tracker/common/cache/drift_database.dart';
import 'package:expense_tracker/features/category/data/repositories/local_category_repository.dart';
import 'package:expense_tracker/presentations/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../cubit/category_cubit.dart';
import '../widgets/category_bottom_sheet.dart';

class SelectCategoryScreen extends StatelessWidget {
  const SelectCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final db = context.read<MyDatabase>();

    return BlocProvider(
      create: (context) => CategoryCubit(
        LocalCategoryRepository(db.categoriesDao),
      ),
      child: Builder(
        builder: (context) {
          final categories = context.watch<CategoryCubit>().state.categories;

          return DefaultTabController(
            length: 3,
            child: Scaffold(
              floatingActionButton: FloatingActionButton.extended(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                onPressed: () async {
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (_) {
                      return BlocProvider.value(
                        value: context.read<CategoryCubit>(),
                        child: const AddCategoryBottomSheet(),
                      );
                    },
                  );
                },
                label: const Text('Add category'),
                icon: const Icon(FontAwesomeIcons.plus),
              ),
              appBar: DefaultAppBar(
                title: 'Select Category',
                trailings: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.magnifyingGlass),
                  )
                ],
              ),
              body: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const TabBar(
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    tabs: [
                      Chip(label: Text('Income')),
                      Chip(label: Text('Income')),
                      Chip(label: Text('Income'))
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: categories
                              .map(
                                (e) => Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () => GoRouter.of(context).pop(e),
                                      child: CircleAvatar(
                                        radius: 28,
                                        backgroundColor: e.backgroundColor,
                                        child: FaIcon(e.icon, color: e.color),
                                      ),
                                    ),
                                    Text(e.name),
                                  ],
                                ),
                              )
                              .toList(),
                        ),
                        const Icon(Icons.directions_car),
                        const Icon(Icons.directions_bike),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}