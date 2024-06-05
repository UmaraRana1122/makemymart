import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:makemymart/Utils/app_colors.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class StepProgressView extends StatefulWidget {
  final double _width;
  final List<String> _titles;
  final int _curStep;
  final Color _activeColor;

  StepProgressView({
    Key? key,
    required int curStep,
    required List<String> titles,
    required double width,
    required Color color,
  })  : _titles = titles,
        _curStep = curStep,
        _width = width,
        _activeColor = color,
        assert(width > 0),
        super(key: key);

  @override
  State<StepProgressView> createState() => _StepProgressViewState();
}

class _StepProgressViewState extends State<StepProgressView> {
  final Color _inactiveColor = AppTheme.colorGrey;
  final double lineWidth = 1.0; // Width of the border line

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget._width,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: _iconViews(),
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _titleViews(),
          ),
        ],
      ),
    );
  }

  List<Widget> _iconViews() {
    var list = <Widget>[];
    widget._titles.asMap().forEach((i, title) {
      var circleColor = (i < widget._curStep)
          ? widget._activeColor
          : (i == widget._curStep)
              ? AppTheme.colorNaturalWhite
              : Colors.transparent;
      var fillColor = (i < widget._curStep)
          ? widget._activeColor
          : AppTheme.colorNaturalWhite;
      var borderColor = (i == widget._curStep)
          ? AppTheme.colorNaturalWhite
          : Colors.transparent;
      var lineColor = (i < widget._curStep)
          ? widget._activeColor
          : AppTheme.colorNaturalWhite;

      list.add(
        Container(
          width: 20.0,
          height: 20.0,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: fillColor,
            borderRadius: BorderRadius.all(Radius.circular(22.0)),
            border: Border.all(
              color: borderColor,
              width: lineWidth, // Width of the border line
            ),
          ),
          child: (i == widget._curStep)
              ? Center(
                  child: Container(
                    width: 14.0,
                    height: 14.0,
                    decoration: BoxDecoration(
                      color: widget._activeColor, // Inner circle color
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              : Container(),
        ),
      );

      // Line between icons
      if (i != widget._titles.length - 1) {
        list.add(Expanded(
          child: Container(
            height: 5,
            color: lineColor,
          ),
        ));
      }
    });

    return list;
  }

  List<Widget> _titleViews() {
    var list = <Widget>[];
    widget._titles.asMap().forEach((i, text) {
      Color textColor;
      if (i < widget._curStep) {
        // Order completed
        textColor = AppTheme.primaryColor;
      } else if (i == widget._curStep) {
        // In progress
        textColor = AppTheme.primaryColor;
      } else {
        // Not yet started
        textColor = Colors.grey;
      }
      list.add(Text(text,
          style: TextStyle(
              color: textColor, fontSize: 14.sp, fontWeight: FontWeight.w500)));
    });
    return list;
  }
}
