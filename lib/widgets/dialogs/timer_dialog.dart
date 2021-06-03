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
  final void Function() dismiss;

  const TimerDialog({
    Key? key,
    required this.height,
    required this.width,
    required this.counter,
    required this.dismiss,
  }) : super(key: key);
  @override
  _TimerDialogState createState() => _TimerDialogState();
}

class _TimerDialogState extends State<TimerDialog> {
  StreamController<DurationEvent> streamController =
      StreamController<DurationEvent>.broadcast();
  late CounterController controller;
  late Timer timer;

  @override
  void dispose() {
    super.dispose();
    streamController.close();
    timer.cancel();
    streamController.close();
  }

  @override
  initState() {
    controller = CounterController(start: widget.counter.value + 1.seconds);
    timer = Timer.periodic(controller.tickingStep, (Timer timer) {
      timer.cancel();
    });
    super.initState();
  }

  _timerBuild() {
    timer = Timer.periodic(controller.tickingStep, (Timer timer) {
      int dif = controller.start.inSeconds - timer.tick;
      if (dif <= 0) {
        streamController.sink.add(
          DurationEvent(
            duration: Duration(seconds: dif),
            durationEventType: DurationEventType.END,
          ),
        );
        print("End");
        timer.cancel();
        print("Active : ${timer.isActive}");
      } else {
        streamController.sink.add(
          DurationEvent(
            duration: Duration(seconds: dif),
            durationEventType: DurationEventType.TICK,
          ),
        );
        print("Tick : ${timer.tick}");
      }
    });
  }

  partialDispose() {
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
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Center(
                  child: Text(
                    "time_tracker".tr,
                    style: textStyle(
                      16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // SliverToBoxAdapter(child: (widget.height * 0.07).heightBox),
              SliverToBoxAdapter(
                child: Obx(() {
                  return Center(
                    child: Text(
                      "${durationToString(formatDuration(widget.counter.value - (timer.isActive ? timer.tick.seconds : 0.seconds)))}",
                      style: textStyle(
                        50,
                        color: Colors.white,
                      ),
                    ).pSy(x: widget.width * 0.04),
                  );
                }),
              ),
              // SliverToBoxAdapter(child: (widget.height * 0.07).heightBox),
              SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        timer.cancel();
                        widget.counter.value = widget.counter.value + 5.seconds;
                        widget.counter.update((val) {});
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
                        timer.cancel();
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
              ),
              // SliverToBoxAdapter(child: (widget.height * 0.02).heightBox),
              SliverToBoxAdapter(
                child: Container(
                  width: widget.width * 0.6,
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
                            "start".tr,
                            style: textStyle(14, color: Colors.white),
                          ).pSy(x: 8.0, y: 4.0),
                        ),
                        onPressed: () {
                          controller =
                              CounterController(start: widget.counter.value + 1.seconds);
                              // CounterController(start: 5.seconds);
                          _timerBuild();
                          print(timer.isActive);
                        },
                        // onPressed:
                      ),
                      TextButton(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            "dismiss".tr,
                            style: textStyle(14, color: Colors.white),
                          ).pSy(x: 8.0, y: 4.0),
                        ),
                        onPressed: () {
                          
                          widget.dismiss();
                        },
                      ),
                    ],
                  ).pSy(x: widget.width * 0.045),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

String durationToString(Tuple2<int, int> counter) {
  var counterMin =
      counter.value1 < 10 ? "0${counter.value1}" : counter.value1.toString();
  var counterSec =
      counter.value2 < 10 ? "0${counter.value2}" : counter.value2.toString();
  return "$counterMin:$counterSec";
}


Tuple2<int, int> formatDuration(Duration duration) {
  return Tuple2((duration.inSeconds / 60).floor(), duration.inSeconds % 60);
}

class CounterController {
  Duration end;
  Duration start;
  Duration tickingStep;

  CounterController({
    this.start = const Duration(seconds: 30),
    this.end = const Duration(seconds: 0),
    this.tickingStep = const Duration(seconds: 1),
  });

  void restart() {}
}

enum DurationEventType { END, START, ERROR, TICK }

class DurationEvent {
  Duration duration;
  DurationEventType durationEventType;
  DurationEvent({required this.duration, required this.durationEventType});
}