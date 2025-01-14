import 'package:expense_tracker/features/app/presentation/widgets/default_app_bar.dart';
import 'package:expense_tracker/gen/assets.gen.dart';
import 'package:expense_tracker/l10n/localization_factory.dart';
import 'package:flutter/material.dart';

class CurrencyScreen extends StatelessWidget {
  const CurrencyScreen({super.key});

  static const String routeName = '/setting/currency';

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.subtitle2?.copyWith(
          color: const Color(0xff0D0E0F),
        );

    return Scaffold(
      appBar: DefaultAppBar(title: context.l10n.currency),
      body: ListView.builder(
        itemBuilder: (_, index) => ListTile(
          title: Text(_currencies[index]['name']!, style: textStyle),
          minVerticalPadding: 17,
          trailing: Assets.icons.success.svg(
            color: Theme.of(context).primaryColor,
          ),
        ),
        itemCount: _currencies.length,
      ),
    );
  }
}

final _currencies = [
  {'name': 'United States (USD)'},
  {'name': 'Vietnam (VND)'},
  {'name': 'Indonesia (IDR)'},
  {'name': 'Japan (JPY)'},
  {'name': 'Russia (RUB)'},
  {'name': 'Korea (WON)'},
];
