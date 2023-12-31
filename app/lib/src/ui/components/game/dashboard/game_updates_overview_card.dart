import 'package:flutter/material.dart';
import 'package:tyrion/src/store/constants/strings.dart';
import 'package:tyrion/src/ui/components/game/dashboard/game_updates_overview_chart.dart';
import 'package:tyrion/src/utils/theme/theme.dart';

class GameUpdatesOverviewCard extends StatelessWidget {
  final int favouriteMajorUpdates;
  final int favouriteMinorUpdates;
  final int favouriteNoUpdates;

  final int followingMajorUpdates;
  final int followingMinorUpdates;
  final int followingNoUpdates;

  const GameUpdatesOverviewCard({
    super.key,
    required this.favouriteMajorUpdates,
    required this.favouriteMinorUpdates,
    required this.favouriteNoUpdates,
    required this.followingMajorUpdates,
    required this.followingMinorUpdates,
    required this.followingNoUpdates,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: AppTheme.dl.sys.dimension.shape.corner.medium,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppTheme.dl.sys.dimension.baseDimension * 6,
          vertical: AppTheme.dl.sys.dimension.baseDimension * 3,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.gameDashboardOutlook,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: AppTheme.dl.sys.dimension.baseDimension * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GameUpdatesOverviewChart(
                  title: AppStrings.commonWordFavourites,
                  displayValue: favouriteMajorUpdates.toString(),
                  values: [
                    favouriteMajorUpdates,
                    favouriteMinorUpdates,
                    favouriteNoUpdates,
                  ],
                  colors: [
                    AppTheme.blue,
                    AppTheme.yellow,
                    AppTheme.red,
                  ],
                ),
                GameUpdatesOverviewChart(
                  title: AppStrings.commonWordFollowing,
                  displayValue: followingMajorUpdates.toString(),
                  values: [
                    followingMajorUpdates,
                    followingMinorUpdates,
                    followingNoUpdates,
                  ],
                  colors: [
                    AppTheme.blue,
                    AppTheme.yellow,
                    AppTheme.red,
                  ],
                ),
              ],
            ),
            SizedBox(
              height: AppTheme.dl.sys.dimension.baseDimension * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: AppTheme.dl.sys.dimension.baseDimension * 2,
                      width: AppTheme.dl.sys.dimension.baseDimension * 2,
                      decoration: BoxDecoration(
                        color: AppTheme.blue,
                        borderRadius:
                            AppTheme.dl.sys.dimension.shape.corner.circle,
                      ),
                    ),
                    SizedBox(
                      width: AppTheme.dl.sys.dimension.baseDimension,
                    ),
                    Text(
                      'No Updates',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: AppTheme.dl.sys.dimension.baseDimension * 2,
                      width: AppTheme.dl.sys.dimension.baseDimension * 2,
                      decoration: BoxDecoration(
                        color: AppTheme.yellow,
                        borderRadius:
                            AppTheme.dl.sys.dimension.shape.corner.circle,
                      ),
                    ),
                    SizedBox(
                      width: AppTheme.dl.sys.dimension.baseDimension,
                    ),
                    Text(
                      'Minor Updates',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: AppTheme.dl.sys.dimension.baseDimension * 2,
                      width: AppTheme.dl.sys.dimension.baseDimension * 2,
                      decoration: BoxDecoration(
                        color: AppTheme.red,
                        borderRadius:
                            AppTheme.dl.sys.dimension.shape.corner.circle,
                      ),
                    ),
                    SizedBox(
                      width: AppTheme.dl.sys.dimension.baseDimension,
                    ),
                    Text(
                      'Major Updates',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
