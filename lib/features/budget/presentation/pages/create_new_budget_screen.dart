import 'package:expense_tracker/di/injector.dart';
import 'package:expense_tracker/features/app/bloc/app_bloc.dart';
import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/features/budget/domain/entities/budget.dart';
import 'package:expense_tracker/features/budget/domain/repositories/budget_repository.dart';
import 'package:expense_tracker/features/budget/domain/usecases/create_budget.dart';
import 'package:expense_tracker/features/budget/domain/usecases/update_budget.dart';
import 'package:expense_tracker/features/budget/presentation/cubit/edit_budget_cubit.dart';
import 'package:expense_tracker/features/category/domain/entities/category.dart';
import 'package:expense_tracker/features/category/presentation/pages/select_category_view.dart';
import 'package:expense_tracker/features/settings/theme/theme.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateNewBudgetScreenProvider extends StatelessWidget {
  const CreateNewBudgetScreenProvider({super.key, this.budget});

  final Budget? budget;

  @override
  Widget build(BuildContext context) {
    final budgetRepository = context.read<IBudgetRepository>();

    return BlocProvider(
      create: (_) => EditBudgetCubit(
        update: UpdateBudget(budgetRepository),
        create: CreateBudget(budgetRepository),
        getCategoryById: GetCategoryById(getIt()),
        initialBudget: budget,
      ),
      child: BlocListener<EditBudgetCubit, EditBudgetState>(
        listenWhen: (previous, current) =>
            previous.status != current.status &&
            current.status == EditBudgetStatus.success,
        listener: (context, _) {
          context.pop();
        },
        child: const CreateNewBudgetScreen(),
      ),
    );
  }
}

class CreateNewBudgetScreen extends StatelessWidget {
  const CreateNewBudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final primaryColor = Theme.of(context).primaryColor;
    final controller = context.read<EditBudgetCubit>();

    final category = controller.state.category;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: DefaultAppBar(
        title: l10n.create_budget,
        color: primaryColor,
        textColor: Colors.white,
      ),
      body: Column(
        children: [
          const Spacer(),
          const _BudgetAmountField(),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: ListView(
              shrinkWrap: true,
              children: [
                InputDecorator(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                  ),
                  child: Card(
                    elevation: 0,
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(borderRadius: borderRadius),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      minLeadingWidth: 10,
                      title: Text(
                        controller.state.category?.name ?? '',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      leading: CircleAvatar(
                        radius: 24,
                        backgroundColor:
                            category?.backgroundColor.withOpacity(0.2),
                        child: Icon(
                          category?.icon,
                          color: category?.color.withOpacity(1),
                        ),
                      ),
                      onTap: () async {
                        final category =
                            await showModalBottomSheet<CategoryEntity?>(
                          context: context,
                          isScrollControlled: true,
                          useRootNavigator: true,
                          builder: (_) => const FractionallySizedBox(
                            heightFactor: 0.9,
                            child: SelectCategoryProvider(
                              child: SelectCategoryView(),
                            ),
                          ),
                        );
                        if (category != null) {
                          await controller.categoryChanged(category.name);
                        }
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const _ReceiveAlertSwitchTile(),
                const SizedBox(height: 32),
                ElevatedButton(
                  onPressed: controller.createNewBudget,
                  child: Text(l10n.continue_str),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ReceiveAlertSwitchTile extends StatelessWidget {
  const _ReceiveAlertSwitchTile();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocSelector<EditBudgetCubit, EditBudgetState, bool>(
      selector: (state) => state.receiveAlert,
      builder: (_, selected) {
        final controller = context.read<EditBudgetCubit>();
        return Column(
          children: [
            SwitchListTile.adaptive(
              contentPadding: EdgeInsets.zero,
              title: Text(l10n.receive_alert_title),
              subtitle: Text(l10n.receive_alert_subtitle),
              onChanged: (_) => controller.switchToggled(),
              value: selected,
            ),
            const SizedBox(height: 16),
            if (selected)
              BlocSelector<EditBudgetCubit, EditBudgetState, double>(
                selector: (state) => state.whenToNotify,
                builder: (_, value) {
                  final controller = context.read<EditBudgetCubit>();
                  return Slider(
                    value: value,
                    onChanged: controller.amountSlide,
                  );
                },
              ),
          ],
        );
      },
    );
  }
}

class _BudgetAmountField extends StatelessWidget {
  const _BudgetAmountField();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final l10n = context.l10n;

    final controller = context.read<EditBudgetCubit>();

    final appState = context.read<AppBloc>().state;

    final numberFormat = appState.numberFormatter;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            l10n.how_much,
            style: textTheme.button?.copyWith(
              color: colorScheme.background,
            ),
          ),
          TextFormField(
            initialValue: numberFormat.format(controller.state.amountDouble),
            decoration: InputDecoration(
              border: InputBorder.none,
              errorStyle: textTheme.bodyText2?.copyWith(
                color: colorScheme.onError,
              ),
            ),
            style: textTheme.headline1?.copyWith(color: colorScheme.background),
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            textInputAction: TextInputAction.next,
            onChanged: (amountStr) {
              controller.amountChanged(
                amountStr: amountStr,
                currencySymbol: numberFormat.currencySymbol,
              );
            },
            cursorColor: colorScheme.background,
          ),
        ],
      ),
    );
  }
}
