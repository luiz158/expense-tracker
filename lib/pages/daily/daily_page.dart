import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../constants.dart';
import '../../models/transaction.dart';
import '../../sample_data.dart';
import '../../size_config.dart';
import '../home/components/expandable_app_bar.dart';
import 'components/body.dart';

class DailyPage extends StatefulWidget {
  static String routeName = '/daily_page';
  static String pageName = 'Daily';
  const DailyPage({Key? key}) : super(key: key);

  @override
  State<DailyPage> createState() => _DailyPageState();
}

class _DailyPageState extends State<DailyPage> {
  bool isExpanded = false;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  List<Transaction> repo = listTransaction;
  @override
  void dispose() {
    isExpanded = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(
        selectedDay: _focusedDay,
        repository: repo,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            repo.add(
              Transaction(
                  payeeName: 'New things',
                  dateCreated: DateTime.now().add(Duration(days: -2)),
                  amount: 1000,
                  category: 'Shopping'),
            );
          });
        },
      ),
    );
  }

  ExpandableAppBar buildAppBar(BuildContext context) {
    return ExpandableAppBar(
      height: isExpanded
          ? SizeConfig.screenHeight * 0.60
          : SizeConfig.screenHeight * 0.25,
      child: Container(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: kHeaderPadding),
                  child: Text(
                    'Daily Transaction',
                    // 'title',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  icon: FaIcon(
                    isExpanded
                        ? FontAwesomeIcons.times
                        : FontAwesomeIcons.search,
                    size: SizeConfig.defaultSize * 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.025),
            Expanded(
              flex: 3,
              child: TableCalendar(
                firstDay: kFirstDay,
                lastDay: kLastDay,
                focusedDay: _focusedDay,
                calendarFormat:
                    isExpanded ? CalendarFormat.month : CalendarFormat.week,
                headerVisible: false,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay =
                        focusedDay; // update `_focusedDay` here as well
                  });
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
                shouldFillViewport: true,
                sixWeekMonthsEnforced: true,
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.025),
          ],
        ),
      ),
    );
  }
}

//  listTransaction.add(
//               Transaction(
//                   payeeName: 'New things',
//                   dateCreated: DateTime.now().add(Duration(days: 1)),
//                   amount: 1000,
//                   category: 'Shopping'),
//             );