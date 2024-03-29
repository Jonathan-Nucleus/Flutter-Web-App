import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oblio/state/right-menu/right_menu_cubit.dart';
import 'package:oblio/widgets/home/common/long-card.dart';
import 'package:oblio/widgets/home/owned/owned_opp_widgets.dart';
import 'package:oblio/widgets/home/performers/performers_widgets.dart';
import 'package:oblio/widgets/home/pipeline/pipeline_widgets.dart';
import 'package:oblio/widgets/home/scheduled/scheduled_widgets.dart';
import 'package:oblio/widgets/home/common/short-card.dart';
import 'package:oblio/widgets/home/stats/stats_widgets.dart';
import 'package:oblio/widgets/home/wins/wins_widgets.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RightMenuCubit, String>(
      builder: (context, menuState) {
        var device = MediaQuery.of(context).size;
        var width = device.width;
        visibility() => width < 600 && menuState != '' ? false : true;
        return Visibility(
          visible: visibility(),
          child: Wrap(
            alignment: WrapAlignment.center,
            direction: Axis.horizontal,
            textDirection: TextDirection.ltr,
            runSpacing: 20,
            spacing: 20,
            children: [
              ShortCard(child: Container(child: StatsWidgets())),
              ShortCard(
                  child: Container(
                child: PerformersWidgets(),
              )),
              ShortCard(
                  child: Container(
                child: ScheduledWidets(),
              )),
              LongCard(child: PipelineWidets()),
              LongCard(child: WinsWidets()),
              LongCard(child: OwnedOppWidets()),
            ],
          ),
        );
      },
    );
  }
}
