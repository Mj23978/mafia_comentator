import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

import '../../utils/helpers.dart';

class NotFoundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.beamingHistory.reversed.toList()[1].state as BeamState;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page Not Found',
                style: textStyle(context, 22, weight: FontWeight.w400)),
            const SizedBox(height: 25),
            ElevatedButton(
              child: Text(
                  'Back to ${state.uri}',
                  style: textStyle(context, 16, weight: FontWeight.w400)),
              onPressed: () {
                // if (context.) {
                  context.beamBack();
                // } else {
                // context.beamToNamed(
                //   context.beamLocationHistory.reversed
                //       .toList()[1]
                //       .state
                //       .uri
                //       .toString(),
                //   stacked: false,
                //   replaceCurrent: true,
                // );
                // }
              },
            )
          ],
        ),
      ),
    );
  }
}
