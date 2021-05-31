import 'dart:async';

import 'package:dartz/dartz.dart' show Tuple2;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';

import '../../utils/helpers.dart';

class TimerDialog extends StatefulWidget {
  final double height;
  final double width;
  final Rx<Duration> counter;
  final Tuple2<int, int> Function(Duration) formatDuration;
  final void Function() startCounter;
  final void Function() dismiss;
  late Trigger trigger;
  late CounterController controller;

  TimerDialog({
    Key? key,
    required this.height,
    required this.width,
    required this.counter,
    required this.formatDuration,
    required this.startCounter,
    required this.dismiss,
  }) : super(key: key) {
    trigger = Trigger();
    controller = CounterController(start: counter.value);
  }

  @override
  _TimerDialogState createState() => _TimerDialogState();
}

class _TimerDialogState extends State<TimerDialog> {
  StreamController<DurationEvent> streamController =
      StreamController<DurationEvent>.broadcast();

  @override
  void dispose() {
    super.dispose();
    widget.controller.controllerBridge.dispose();
    streamController.close();
    timer.cancel();
    widget.trigger.dispose();
    streamController.close();
  }

  late Timer timer;
  initState() {
    widget.controller.controllerBridge.link((data) {
      if (data == "restart") {
        print("some data");
        partialDispose();
        _build();
      }
    });
    super.initState();
    _build();
  }

  _timerBuild() {
    timer = Timer.periodic(this.widget.controller.tickingStep, (Timer timer) {
      int dif = this.widget.controller.start.inSeconds - timer.tick;
      if (dif <= 0) {
        streamController.sink.add(
          DurationEvent(
            duration: Duration(seconds: dif),
            durationEventType: DurationEventType.END,
          ),
        );
      } else {
        streamController.sink.add(
          DurationEvent(
            duration: Duration(seconds: dif),
            durationEventType: DurationEventType.TICK,
          ),
        );
      }
    });
    streamController.stream.listen((duration) {
      if (duration.durationEventType == DurationEventType.END) {
        timer.cancel();
      }
    });
  }

  _build() {
    this.widget.trigger.triggerStream.stream.listen((data) {
      _timerBuild();
    });
  }

  partialDispose() {
    widget.controller.controllerBridge.close();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DurationEvent>(
        stream: streamController.stream,
        builder: (context, snapshot) {
          return Container(
            width: widget.width,
            height: widget.height,
            padding: EdgeInsets.symmetric(
                horizontal: widget.width * 0.07, vertical: widget.height * 0.1),
            decoration: BoxDecoration(
              color: Color(0xff222344),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  "Time Tracker",
                  style: textStyle(
                    16,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Obx(() {
                  return Text(
                    "${durationToString(widget.formatDuration(widget.counter.value))}",
                    style: textStyle(
                      50,
                      color: Colors.white,
                    ),
                  ).pSy(x: widget.width * 0.04);
                }),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        widget.counter.value = widget.counter.value + 5.seconds;
                        widget.counter.update((val) {});
                        // print("Increment Vaziat ${controller.vaziat}");
                      },
                      child: Icon(
                        Icons.add,
                        size: widget.width * 0.2 > 30.0
                            ? 30.0
                            : widget.width * 0.2,
                        color: Colors.white,
                      ),
                    ),
                    (widget.width * 0.15).widthBox,
                    InkWell(
                      onTap: () {
                        if (widget.counter.value >= 5.seconds) {
                          widget.counter.value =
                              widget.counter.value - 5.seconds;
                          widget.counter.update((val) {});
                        }
                      },
                      child: Icon(
                        Icons.horizontal_rule_outlined,
                        size: widget.width * 0.2 > 30.0
                            ? 30.0
                            : widget.width * 0.2,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                (widget.height * 0.02).heightBox,
                Container(
                  width: widget.width * 0.7,
                  height: widget.height * 0.2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "Start",
                            style: textStyle(14, color: Colors.white),
                          ).pSy(x: 8.0, y: 4.0),
                        ),
                        onPressed: widget.startCounter,
                        // onPressed:
                      ),
                      TextButton(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "Cancel",
                            style: textStyle(14, color: Colors.white),
                          ).pSy(x: 8.0, y: 4.0),
                        ),
                        onPressed: widget.dismiss,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}

String durationToString(Tuple2<int, int> counter) {
  var counterMin =
      counter.value1 < 10 ? "0${counter.value1}" : counter.value1.toString();
  var counterSec =
      counter.value2 < 10 ? "0${counter.value2}" : counter.value2.toString();
  return "$counterMin:$counterSec";
}

class Trigger {
  StreamController triggerStream = new StreamController.broadcast();
  start() {
    triggerStream.add("triggered");
  }

  dispose() {
    triggerStream.close();
  }
}

class CounterController {
  Duration end;
  Duration start;
  Duration tickingStep;
  ControllerBridge controllerBridge = ControllerBridge();

  CounterController({
    this.start = const Duration(seconds: 30),
    this.end = const Duration(seconds: 0),
    this.tickingStep = const Duration(seconds: 1),
  });

  void restart() {
    controllerBridge.add("restart");
  }
}

enum DurationEventType { END, START, ERROR, TICK }

class DurationEvent {
  Duration duration;
  DurationEventType durationEventType;
  DurationEvent({required this.duration, required this.durationEventType});
}

class ControllerBridge {
  StreamController _controller = StreamController.broadcast();
  List<StreamSubscription> subscribers = [];

  link(Function streamReceiver) {
    subscribers.add(_controller.stream.listen((data) {
      streamReceiver(data);
    }));
  }

  add(dynamic data) {
    _controller.add(data);
  }

  close() {
    // subscribers.forEach((s) => s.pause());
    // subscribers.clear();
  }
  dispose() {
    _controller.close();
  }
}
