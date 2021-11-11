import 'package:expense_tracker/blocs/transaction/transaction_bloc.dart';
import 'package:expense_tracker/domain/transaction/models/category.dart';
import 'package:expense_tracker/presentations/components/default_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:transaction_repository/transaction_repository.dart';

class AddNewTransactionPage extends StatelessWidget {
  const AddNewTransactionPage({Key? key}) : super(key: key);
  static String routeName = '/add_transaction';

  @override
  Widget build(BuildContext context) {
    // final wallets = ModalRoute.of(context)!.settings.arguments as List<Wallet>;

    // final items = [
    //   Category.fromName('Food'),
    //   Category.fromName('Shopping'),
    //   Category.fromName('Family'),
    //   Category.fromName('Some things'),
    // ];
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text('This is page adding'),
            DefaultButton(
                title: 'Add',
                onPressed: () {
                  context.read<TransactionBloc>().add(
                        AddTransactions(
                          Transaction(
                            amount: 1.0,
                            category: 'Testing',
                            type: TransactionType.expense,
                            wallet: 'Mommy wallet',
                            description: 'From my testing screen',
                          ),
                        ),
                      );
                }),
          ],
        ),
      ),
    );
  }
}

    // BlocProvider(
    //   create: (context) => getIt<TransactionFormBloc>(),
    //   child: BlocConsumer<TransactionFormBloc, TransactionFormState>(
    //     listener: (context, state) {
    //       state.saveFailureOrSuccessOption.fold(
    //         () {},
    //         (either) => either.fold(
    //           (f) {
    //             Flushbar(
    //               message: f.map(
    //                 unexpected: (_) => 'unexpected',
    //                 insufficientPermission: (_) => 'insufficientPermission',
    //                 unableToUpdate: (_) => 'unableToUpdate',
    //               ),
    //             );
    //           },
    //           (r) {
    //             Navigator.pop(context);
    //           },
    //         ),
    //       );
    //     },
    //     builder: (context, state) {
    //       final bloc = context.read<TransactionFormBloc>();

    //       return Scaffold(
    //         backgroundColor: kRed100,
    //         appBar: DefaultAppBar(
    //           color: kRed100,
    //           lead: GestureDetector(
    //             child: Image.asset('assets/icons/arrow-left.png',
    //                 color: kLight100),
    //             onTap: () => Navigator.pop(context),
    //           ),
    //           middle: Text('Expense', style: title3.copyWith(color: kLight100)),
    //         ),
    //         body: Align(
    //           alignment: Alignment.bottomCenter,
    //           child: SingleChildScrollView(
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Padding(
    //                   padding: const EdgeInsets.all(kMediumPadding),
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Text(
    //                         'How much',
    //                         style: title3.copyWith(color: kLight80),
    //                       ),
    //                       TextFormField(
    //                         keyboardType: TextInputType.number,
    //                         style: titleX.copyWith(color: kLight80),
    //                         decoration: InputDecoration(
    //                           errorStyle: small.copyWith(color: kLight80),
    //                           border: InputBorder.none,
    //                           hintText: '0',
    //                           prefixIcon: Text(
    //                             '\$',
    //                             style: titleX.copyWith(color: kLight80),
    //                           ),
    //                           hintStyle: titleX.copyWith(color: kLight80),
    //                         ),
    //                         validator: (_) =>
    //                             state.transaction.amount.value.fold(
    //                           (failure) => failure.maybeMap(
    //                             invalidNumber: (_) => 'Invalid number',
    //                             negativeNumber: (_) =>
    //                                 'The value of expense must be greater than 0',
    //                             orElse: () => null,
    //                           ),
    //                           (_) => null,
    //                         ),
    //                         autovalidateMode: AutovalidateMode.always,
    //                         onChanged: (v) => bloc.add(
    //                           TransactionFormEvent.amountChanged(v),
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 Container(
    //                   decoration: const BoxDecoration(
    //                     color: kLight100,
    //                     borderRadius: BorderRadius.only(
    //                       topLeft: Radius.circular(kLargePadding),
    //                       topRight: Radius.circular(kLargePadding),
    //                     ),
    //                   ),
    //                   child: Form(
    //                     child: Padding(
    //                       padding: const EdgeInsets.symmetric(
    //                         horizontal: kMediumPadding,
    //                         vertical: 24,
    //                       ),
    //                       child: Column(
    //                         children: [
    //                           DropdownButtonFormField<Category>(
    //                             onChanged: (v) {
    //                               bloc.add(
    //                                   TransactionFormEvent.categoryChanged(v!));
    //                             },
    //                             hint: const Text('Category'),
    //                             items: items
    //                                 .map(
    //                                   (e) => DropdownMenuItem(
    //                                     value: e,
    //                                     child: Text(e.name),
    //                                   ),
    //                                 )
    //                                 .toList(),
    //                             icon: Padding(
    //                               padding: const EdgeInsets.only(
    //                                   right: kDefaultPadding),
    //                               child: Image.asset(
    //                                 'assets/icons/arrow-down-2.png',
    //                                 color: kViolet100,
    //                               ),
    //                             ),
    //                             autovalidateMode:
    //                                 AutovalidateMode.onUserInteraction,
    //                             validator: (value) {
    //                               if (value == null) {
    //                                 return 'Please choose wallet';
    //                               }
    //                               return null;
    //                             },
    //                           ),
    //                           const SizedBox(height: kMediumPadding),
    //                           TextFormField(
    //                             decoration: const InputDecoration(
    //                                 label: Text('Description')),
    //                             textInputAction: TextInputAction.next,
    //                             validator: (value) {
    //                               if (value == null || value.isEmpty) {
    //                                 return 'Please enter some text';
    //                               }
    //                               return null;
    //                             },
    //                             onChanged: (v) => bloc.add(
    //                               TransactionFormEvent.descriptionChanged(v),
    //                             ),
    //                           ),
    //                           const SizedBox(height: kMediumPadding),
    //                           DropdownButtonFormField<Wallet>(
    //                             onChanged: (v) => bloc.add(
    //                               TransactionFormEvent.walletChanged(v!),
    //                             ),
    //                             autovalidateMode: AutovalidateMode.always,
    //                             validator: (value) {
    //                               if (value == null) {
    //                                 return 'Please choose wallet';
    //                               }
    //                               return null;
    //                             },
    //                             hint: const Text('Wallet'),
    //                             items: wallets
    //                                 .map(
    //                                   (e) => DropdownMenuItem(
    //                                     value: e,
    //                                     child: Text(
    //                                       e.name.getOrCrash().toString(),
    //                                     ),
    //                                   ),
    //                                 )
    //                                 .toList(),
    //                             icon: Padding(
    //                               padding: const EdgeInsets.only(
    //                                   right: kDefaultPadding),
    //                               child: Image.asset(
    //                                 'assets/icons/arrow-down-2.png',
    //                                 color: kViolet100,
    //                               ),
    //                             ),
    //                           ),
    //                           const SizedBox(height: kMediumPadding),
    //                           DottedBorder(
    //                             borderType: BorderType.RRect,
    //                             radius: const Radius.circular(kDefaultRadius),
    //                             dashPattern: const [kDefaultPadding],
    //                             child: ClipRRect(
    //                               borderRadius:
    //                                   BorderRadius.circular(kDefaultRadius),
    //                               child: DefaultButton(
    //                                 elevation: 0,
    //                                 onPressed: () {},
    //                                 middle: Row(
    //                                   children: [
    //                                     Image.asset(
    //                                       'assets/icons/attachment.png',
    //                                       color: kDark25,
    //                                     ),
    //                                     Text(
    //                                       'Add attachment',
    //                                       style:
    //                                           title3.copyWith(color: kDark25),
    //                                     ),
    //                                   ],
    //                                 ),
    //                                 title: '',
    //                                 isGhost: true,
    //                               ),
    //                             ),
    //                           ),
    //                           const SizedBox(height: kMediumPadding),
    //                           Material(
    //                             borderRadius:
    //                                 BorderRadius.circular(kMediumPadding),
    //                             child: ListTile(
    //                               title: const Text('Repeat', style: body1),
    //                               subtitle: const Text('Repeat transaction'),
    //                               trailing: Switch(
    //                                 value: true,
    //                                 onChanged: (v) {},
    //                                 activeColor: kViolet100,
    //                                 inactiveTrackColor: kViolet20,
    //                               ),
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //                 Container(
    //                   color: kLight100,
    //                   child: Padding(
    //                     padding: const EdgeInsets.all(kMediumPadding),
    //                     child: DefaultButton(
    //                       onPressed: () {
    //                         bloc.add(const CommitPressed());
    //                       },
    //                       title: 'Continue',
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // );