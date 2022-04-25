import 'package:flutter/material.dart';
import 'package:karee/widgets.dart';
import '../../../entities/favorite_transaction.dart';
import '../../../utils/style.dart';

class FavoriteTab extends RoutableWidget {
  FavoriteTab({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, Object? parameter) {
    Future<List<FavoritePurchase>> favList = parameter != null
        ? parameter as Future<List<FavoritePurchase>>
        : Future.value(<FavoritePurchase>[]);

    return FutureBuilder<List<FavoritePurchase>>(
        future: favList,
        builder: (_, snap) {
          if (snap.hasError) {
            return Center(
                child: TextButton.icon(
                    onPressed: null,
                    icon: Icon(
                      Icons.error_outline,
                      color: Style.dangerColor.withOpacity(0.4),
                    ),
                    label: Text('Something went wrong',
                        style: TextStyle(
                            color: Style.dangerColor.withOpacity(0.7)))));
          }
          if (!snap.hasData) {
            return Center(
                child: TextButton.icon(
                    onPressed: null,
                    icon: CircularProgressIndicator.adaptive(),
                    label: Text('Data loading',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Style.primaryDashboardDarkColor
                                .withOpacity(0.7)))));
          }

          return ListView.builder(
              itemCount: snap.data!.length,
              itemBuilder: (_, ind) {
                var fav = snap.data![ind];

                // var rand = Random.secure();
                return ListTile(
                  //   decoration: BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       color: Color((((((0xFF << 8) + rand.nextInt(200)) << 8) +
                  //                       rand.nextInt(200) <<
                  //                   8) +
                  //               rand.nextInt(200)) <<
                  //           8)),
                  // padding: EdgeInsets.all(30),
                  // alignment: Alignment.center,
                  title: Text(fav.name),
                );
              });
        });
  }
}
