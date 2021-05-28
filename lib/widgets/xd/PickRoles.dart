import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PickRolesXD extends StatelessWidget {
  PickRolesXD({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -28.0, end: -35.0),
            Pin(start: 2.0, end: -2.0),
            child:
                // Adobe XD layer: '01' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Background.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 74.0, middle: 0.5),
            Pin(size: 19.0, start: 61.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'City Roles',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 84.0, middle: 0.5029),
            Pin(size: 19.0, middle: 0.4044),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Mafia Roles',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, middle: 0.5015),
            Pin(size: 24.0, start: 17.0),
            child: Text(
              '12 Players',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 20,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, end: 42.0),
            Pin(size: 37.0, middle: 0.33),
            child: SvgPicture.string(
              _svg_3vutco,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, start: 35.0),
            Pin(size: 37.0, start: 94.0),
            child: SvgPicture.string(
              _svg_qj142k,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, start: 35.0),
            Pin(size: 37.0, middle: 0.188),
            child: SvgPicture.string(
              _svg_uehv1q,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, start: 35.0),
            Pin(size: 37.0, middle: 0.259),
            child: SvgPicture.string(
              _svg_uxqg5w,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, start: 35.0),
            Pin(size: 37.0, middle: 0.33),
            child: SvgPicture.string(
              _svg_pymkme,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, middle: 0.4896),
            Pin(size: 37.0, middle: 0.33),
            child: SvgPicture.string(
              _svg_cf1rpu,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, middle: 0.4896),
            Pin(size: 37.0, middle: 0.259),
            child: SvgPicture.string(
              _svg_5wya8i,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, middle: 0.4896),
            Pin(size: 37.0, middle: 0.188),
            child: SvgPicture.string(
              _svg_3yme1e,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, middle: 0.4896),
            Pin(size: 37.0, start: 94.0),
            child: SvgPicture.string(
              _svg_ptsp62,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, end: 42.0),
            Pin(size: 37.0, start: 94.0),
            child: SvgPicture.string(
              _svg_owsq8m,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, end: 42.0),
            Pin(size: 37.0, middle: 0.188),
            child: SvgPicture.string(
              _svg_4kkkbs,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, end: 42.0),
            Pin(size: 37.0, middle: 0.259),
            child: SvgPicture.string(
              _svg_2m8o4o,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 28.0, middle: 0.1775),
            Pin(size: 10.0, start: 108.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Doctor',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, start: 44.0),
            Pin(size: 17.0, start: 104.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff7dd36b),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 3.7, end: 3.9),
                  Pin(size: 6.5, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Checkbox' (shape)
                      SvgPicture.string(
                    _svg_wwy8by,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 40.0, middle: 0.5155),
            Pin(size: 10.0, start: 108.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Detective',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.4209),
            Pin(size: 17.0, start: 104.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff7dd36b),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 3.7, end: 3.9),
                  Pin(size: 6.5, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Checkbox' (shape)
                      SvgPicture.string(
                    _svg_7h3av6,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 29.0, middle: 0.8246),
            Pin(size: 10.0, start: 108.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Citizen',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.7348),
            Pin(size: 17.0, start: 104.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff7dd36b),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 3.7, end: 3.9),
                  Pin(size: 6.5, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Checkbox' (shape)
                      SvgPicture.string(
                    _svg_paesaq,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 27.0, middle: 0.1771),
            Pin(size: 10.0, middle: 0.1988),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Sniper',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, start: 44.0),
            Pin(size: 17.0, middle: 0.1956),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff7dd36b),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 3.7, end: 3.9),
                  Pin(size: 6.5, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Checkbox' (shape)
                      SvgPicture.string(
                    _svg_8mzwgs,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 26.0, middle: 0.4975),
            Pin(size: 10.0, middle: 0.1988),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Armor',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.4209),
            Pin(size: 17.0, middle: 0.1956),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff7dd36b),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 3.7, end: 3.9),
                  Pin(size: 6.5, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Checkbox' (shape)
                      SvgPicture.string(
                    _svg_4pscce,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 25.0, middle: 0.8164),
            Pin(size: 10.0, middle: 0.1988),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Priest',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 9.4, middle: 0.7304),
            Pin(size: 6.5, middle: 0.199),
            child:
                // Adobe XD layer: 'Checkbox' (shape)
                SvgPicture.string(
              _svg_d3j536,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 38.0, middle: 0.1821),
            Pin(size: 10.0, middle: 0.2675),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Guardian',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 9.4, start: 47.7),
            Pin(size: 6.5, middle: 0.2674),
            child:
                // Adobe XD layer: 'Checkbox' (shape)
                SvgPicture.string(
              _svg_rxrrxc,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 42.0, middle: 0.5181),
            Pin(size: 10.0, middle: 0.2675),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'GunSmith',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 9.4, middle: 0.4222),
            Pin(size: 6.5, middle: 0.2674),
            child:
                // Adobe XD layer: 'Checkbox' (shape)
                SvgPicture.string(
              _svg_erduri,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 33.0, middle: 0.8329),
            Pin(size: 10.0, middle: 0.2675),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Bomber',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 27.0, middle: 0.1771),
            Pin(size: 10.0, middle: 0.3361),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Mason',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 9.4, start: 47.7),
            Pin(size: 6.5, middle: 0.3358),
            child:
                // Adobe XD layer: 'Checkbox' (shape)
                SvgPicture.string(
              _svg_qeh1ss,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 34.0, middle: 0.5076),
            Pin(size: 10.0, middle: 0.3361),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Cowboy',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 9.4, middle: 0.4222),
            Pin(size: 6.5, middle: 0.3358),
            child:
                // Adobe XD layer: 'Checkbox' (shape)
                SvgPicture.string(
              _svg_e2vo8y,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 29.0, middle: 0.8246),
            Pin(size: 10.0, middle: 0.3361),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Text(
                    'Hacker',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 9,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 9.4, middle: 0.7304),
            Pin(size: 6.5, middle: 0.3358),
            child:
                // Adobe XD layer: 'Checkbox' (shape)
                SvgPicture.string(
              _svg_vw75oi,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.7348),
            Pin(size: 17.0, middle: 0.1956),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xe0ffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.7348),
            Pin(size: 17.0, middle: 0.2649),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xe0ffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.7348),
            Pin(size: 17.0, middle: 0.3341),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xe0ffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.4209),
            Pin(size: 17.0, middle: 0.3341),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xe0ffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.4209),
            Pin(size: 17.0, middle: 0.2649),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xe0ffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, start: 44.0),
            Pin(size: 17.0, middle: 0.2649),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xe0ffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, start: 44.0),
            Pin(size: 17.0, middle: 0.3341),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xe0ffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 36.0, end: 36.0),
            Pin(size: 58.0, end: 27.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23.0),
                      gradient: LinearGradient(
                        begin: Alignment(-0.96, -0.62),
                        end: Alignment(0.95, 0.78),
                        colors: [
                          const Color(0xccad79cb),
                          const Color(0xcc3e66c4)
                        ],
                        stops: [0.0, 1.0],
                      ),
                      border: Border.all(
                          width: 1.0, color: const Color(0xff707070)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 107.0, middle: 0.502),
                  Pin(size: 24.0, middle: 0.5),
                  child: Text(
                    'Show Roles',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, start: 31.0),
            Pin(size: 37.0, middle: 0.4595),
            child: SvgPicture.string(
              _svg_6bpz73,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 22.0, middle: 0.1626),
            Pin(size: 10.0, middle: 0.4614),
            child: Text(
              'Mafia',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 9,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, middle: 0.4866),
            Pin(size: 37.0, middle: 0.4595),
            child: SvgPicture.string(
              _svg_2n5cqf,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 44.0, middle: 0.513),
            Pin(size: 10.0, middle: 0.4614),
            child: Text(
              'GodFather',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 9,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, end: 40.0),
            Pin(size: 37.0, middle: 0.4595),
            child: SvgPicture.string(
              _svg_i89ttj,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 29.0, middle: 0.8246),
            Pin(size: 10.0, middle: 0.4614),
            child: Text(
              'Silncer',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 9,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, start: 31.0),
            Pin(size: 37.0, middle: 0.5367),
            child: SvgPicture.string(
              _svg_6we909,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 26.0, middle: 0.1617),
            Pin(size: 10.0, middle: 0.5361),
            child: Text(
              'Lawer',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 9,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, middle: 0.4866),
            Pin(size: 37.0, middle: 0.5367),
            child: SvgPicture.string(
              _svg_tubosp,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 45.0, middle: 0.5144),
            Pin(size: 10.0, middle: 0.5361),
            child: Text(
              'Negotiator',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 9,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, end: 40.0),
            Pin(size: 37.0, middle: 0.5367),
            child: SvgPicture.string(
              _svg_e977pl,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 35.0, end: 64.0),
            Pin(size: 10.0, middle: 0.5361),
            child: Text(
              'Terrorist',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 9,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, start: 31.0),
            Pin(size: 37.0, middle: 0.6139),
            child: SvgPicture.string(
              _svg_3hfisf,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 46.0, start: 64.0),
            Pin(size: 10.0, middle: 0.6108),
            child: Text(
              'StrongMan',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 9,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, middle: 0.4866),
            Pin(size: 37.0, middle: 0.6139),
            child: SvgPicture.string(
              _svg_oervpl,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 27.0, middle: 0.4913),
            Pin(size: 10.0, middle: 0.6108),
            child: Text(
              'Lecter',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 9,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, end: 40.0),
            Pin(size: 37.0, middle: 0.6139),
            child: SvgPicture.string(
              _svg_8tnemh,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 20.0, middle: 0.8064),
            Pin(size: 10.0, middle: 0.6108),
            child: Text(
              'Nato',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 9,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 93.0, start: 31.0),
            Pin(size: 37.0, middle: 0.6912),
            child: SvgPicture.string(
              _svg_z02nl9,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 52.0, start: 63.0),
            Pin(size: 10.0, middle: 0.6855),
            child: Text(
              'Role Blocker',
              style: TextStyle(
                fontFamily: 'Rubik',
                fontSize: 9,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.7348),
            Pin(size: 17.0, middle: 0.4605),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xdbffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.7348),
            Pin(size: 17.0, middle: 0.5358),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xdbffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.4185),
            Pin(size: 17.0, middle: 0.6112),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xe0ffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, start: 40.0),
            Pin(size: 17.0, middle: 0.5358),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xe0ffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, start: 40.0),
            Pin(size: 17.0, middle: 0.6112),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xe0ffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, start: 40.0),
            Pin(size: 17.0, middle: 0.6865),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xe0ffffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.4185),
            Pin(size: 17.0, middle: 0.4605),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffe35584),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 3.7, end: 3.9),
                  Pin(size: 6.5, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Checkbox' (shape)
                      SvgPicture.string(
                    _svg_8mzwgs,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.4185),
            Pin(size: 17.0, middle: 0.5358),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffe35584),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 3.7, end: 3.9),
                  Pin(size: 6.5, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Checkbox' (shape)
                      SvgPicture.string(
                    _svg_8mzwgs,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, middle: 0.7348),
            Pin(size: 17.0, middle: 0.6112),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffe35584),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 3.7, end: 3.9),
                  Pin(size: 6.5, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Checkbox' (shape)
                      SvgPicture.string(
                    _svg_8mzwgs,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 17.0, start: 40.0),
            Pin(size: 17.0, middle: 0.4605),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffe35584),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 3.7, end: 3.9),
                  Pin(size: 6.5, middle: 0.4654),
                  child:
                      // Adobe XD layer: 'Checkbox' (shape)
                      SvgPicture.string(
                    _svg_8mzwgs,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 21.0, start: 28.0),
            Pin(size: 18.0, start: 22.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 1.0, middle: 0.5294),
                  child: SvgPicture.string(
                    _svg_mf01ux,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 1.0, middle: 0.55),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_8se097,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_3vutco =
    '<svg viewBox="293.0 265.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(293.0, 265.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qj142k =
    '<svg viewBox="35.0 94.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(35.0, 94.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uehv1q =
    '<svg viewBox="35.0 151.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(35.0, 151.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uxqg5w =
    '<svg viewBox="35.0 208.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(35.0, 208.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pymkme =
    '<svg viewBox="35.0 265.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(35.0, 265.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cf1rpu =
    '<svg viewBox="164.0 265.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(164.0, 265.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5wya8i =
    '<svg viewBox="164.0 208.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(164.0, 208.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3yme1e =
    '<svg viewBox="164.0 151.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(164.0, 151.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ptsp62 =
    '<svg viewBox="164.0 94.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(164.0, 94.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_owsq8m =
    '<svg viewBox="293.0 94.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(293.0, 94.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4kkkbs =
    '<svg viewBox="293.0 151.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(293.0, 151.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2m8o4o =
    '<svg viewBox="293.0 208.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#cc70db70" stop-opacity="0.8" /><stop offset="1.0" stop-color="#c73aa819" stop-opacity="0.78" /></linearGradient></defs><path transform="translate(293.0, 208.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wwy8by =
    '<svg viewBox="47.7 108.9 9.4 6.5" ><path transform="translate(47.71, 108.89)" d="M 3.737481355667114 6.4999680519104 L 0 2.762486219406128 L 0.7583296298980713 2.004156589508057 L 3.737481355667114 4.929141521453857 L 8.666624069213867 0 L 9.424953460693359 0.7583295702934265 L 3.737481355667114 6.4999680519104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7h3av6 =
    '<svg viewBox="176.7 108.9 9.4 6.5" ><path transform="translate(176.71, 108.89)" d="M 3.737481355667114 6.4999680519104 L 0 2.762486219406128 L 0.7583296298980713 2.004156589508057 L 3.737481355667114 4.929141521453857 L 8.666624069213867 0 L 9.424953460693359 0.7583295702934265 L 3.737481355667114 6.4999680519104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_paesaq =
    '<svg viewBox="305.7 108.9 9.4 6.5" ><path transform="translate(305.71, 108.89)" d="M 3.737481355667114 6.4999680519104 L 0 2.762486219406128 L 0.7583296298980713 2.004156589508057 L 3.737481355667114 4.929141521453857 L 8.666624069213867 0 L 9.424953460693359 0.7583295702934265 L 3.737481355667114 6.4999680519104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8mzwgs =
    '<svg viewBox="47.7 165.9 9.4 6.5" ><path transform="translate(47.71, 165.89)" d="M 3.737481355667114 6.4999680519104 L 0 2.762486219406128 L 0.7583296298980713 2.004156589508057 L 3.737481355667114 4.929141521453857 L 8.666624069213867 0 L 9.424953460693359 0.7583295702934265 L 3.737481355667114 6.4999680519104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4pscce =
    '<svg viewBox="176.7 165.9 9.4 6.5" ><path transform="translate(176.71, 165.89)" d="M 3.737481355667114 6.4999680519104 L 0 2.762486219406128 L 0.7583296298980713 2.004156589508057 L 3.737481355667114 4.929141521453857 L 8.666624069213867 0 L 9.424953460693359 0.7583295702934265 L 3.737481355667114 6.4999680519104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_d3j536 =
    '<svg viewBox="305.7 165.9 9.4 6.5" ><path transform="translate(305.71, 165.89)" d="M 3.737481355667114 6.4999680519104 L 0 2.762486219406128 L 0.7583296298980713 2.004156589508057 L 3.737481355667114 4.929141521453857 L 8.666624069213867 0 L 9.424953460693359 0.7583295702934265 L 3.737481355667114 6.4999680519104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rxrrxc =
    '<svg viewBox="47.7 222.9 9.4 6.5" ><path transform="translate(47.71, 222.89)" d="M 3.737481355667114 6.4999680519104 L 0 2.762486219406128 L 0.7583296298980713 2.004156589508057 L 3.737481355667114 4.929141521453857 L 8.666624069213867 0 L 9.424953460693359 0.7583295702934265 L 3.737481355667114 6.4999680519104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_erduri =
    '<svg viewBox="176.7 222.9 9.4 6.5" ><path transform="translate(176.71, 222.89)" d="M 3.737481355667114 6.4999680519104 L 0 2.762486219406128 L 0.7583296298980713 2.004156589508057 L 3.737481355667114 4.929141521453857 L 8.666624069213867 0 L 9.424953460693359 0.7583295702934265 L 3.737481355667114 6.4999680519104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qeh1ss =
    '<svg viewBox="47.7 279.9 9.4 6.5" ><path transform="translate(47.71, 279.89)" d="M 3.737481355667114 6.4999680519104 L 0 2.762486219406128 L 0.7583296298980713 2.004156589508057 L 3.737481355667114 4.929141521453857 L 8.666624069213867 0 L 9.424953460693359 0.7583295702934265 L 3.737481355667114 6.4999680519104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e2vo8y =
    '<svg viewBox="176.7 279.9 9.4 6.5" ><path transform="translate(176.71, 279.89)" d="M 3.737481355667114 6.4999680519104 L 0 2.762486219406128 L 0.7583296298980713 2.004156589508057 L 3.737481355667114 4.929141521453857 L 8.666624069213867 0 L 9.424953460693359 0.7583295702934265 L 3.737481355667114 6.4999680519104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vw75oi =
    '<svg viewBox="305.7 279.9 9.4 6.5" ><path transform="translate(305.71, 279.89)" d="M 3.737481355667114 6.4999680519104 L 0 2.762486219406128 L 0.7583296298980713 2.004156589508057 L 3.737481355667114 4.929141521453857 L 8.666624069213867 0 L 9.424953460693359 0.7583295702934265 L 3.737481355667114 6.4999680519104 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6bpz73 =
    '<svg viewBox="31.0 369.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.12793" x2="0.5" y2="0.877474"><stop offset="0.0" stop-color="#a8d04158" stop-opacity="0.66" /><stop offset="1.0" stop-color="#9ce13b6d" stop-opacity="0.61" /></linearGradient></defs><path transform="translate(31.0, 369.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2n5cqf =
    '<svg viewBox="163.0 369.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.12793" x2="0.5" y2="0.877474"><stop offset="0.0" stop-color="#a8d04158" stop-opacity="0.66" /><stop offset="1.0" stop-color="#9ce13b6d" stop-opacity="0.61" /></linearGradient></defs><path transform="translate(163.0, 369.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i89ttj =
    '<svg viewBox="295.0 369.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.12793" x2="0.5" y2="0.877474"><stop offset="0.0" stop-color="#a8d04158" stop-opacity="0.66" /><stop offset="1.0" stop-color="#9ce13b6d" stop-opacity="0.61" /></linearGradient></defs><path transform="translate(295.0, 369.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6we909 =
    '<svg viewBox="31.0 431.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.12793" x2="0.5" y2="0.877474"><stop offset="0.0" stop-color="#a8d04158" stop-opacity="0.66" /><stop offset="1.0" stop-color="#9ce13b6d" stop-opacity="0.61" /></linearGradient></defs><path transform="translate(31.0, 431.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tubosp =
    '<svg viewBox="163.0 431.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.12793" x2="0.5" y2="0.877474"><stop offset="0.0" stop-color="#a8d04158" stop-opacity="0.66" /><stop offset="1.0" stop-color="#9ce13b6d" stop-opacity="0.61" /></linearGradient></defs><path transform="translate(163.0, 431.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_e977pl =
    '<svg viewBox="295.0 431.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.12793" x2="0.5" y2="0.877474"><stop offset="0.0" stop-color="#a8d04158" stop-opacity="0.66" /><stop offset="1.0" stop-color="#9ce13b6d" stop-opacity="0.61" /></linearGradient></defs><path transform="translate(295.0, 431.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3hfisf =
    '<svg viewBox="31.0 493.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.12793" x2="0.5" y2="0.877474"><stop offset="0.0" stop-color="#a8d04158" stop-opacity="0.66" /><stop offset="1.0" stop-color="#9ce13b6d" stop-opacity="0.61" /></linearGradient></defs><path transform="translate(31.0, 493.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oervpl =
    '<svg viewBox="163.0 493.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.12793" x2="0.5" y2="0.877474"><stop offset="0.0" stop-color="#a8d04158" stop-opacity="0.66" /><stop offset="1.0" stop-color="#9ce13b6d" stop-opacity="0.61" /></linearGradient></defs><path transform="translate(163.0, 493.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8tnemh =
    '<svg viewBox="295.0 493.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.12793" x2="0.5" y2="0.877474"><stop offset="0.0" stop-color="#a8d04158" stop-opacity="0.66" /><stop offset="1.0" stop-color="#9ce13b6d" stop-opacity="0.61" /></linearGradient></defs><path transform="translate(295.0, 493.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z02nl9 =
    '<svg viewBox="31.0 555.0 93.0 37.0" ><defs><linearGradient id="gradient" x1="0.5" y1="0.12793" x2="0.5" y2="0.877474"><stop offset="0.0" stop-color="#a8d04158" stop-opacity="0.66" /><stop offset="1.0" stop-color="#9ce13b6d" stop-opacity="0.61" /></linearGradient></defs><path transform="translate(31.0, 555.0)" d="M 6 0 L 87 0 C 90.31370544433594 0 93 2.686291217803955 93 6 L 93 31 C 93 34.3137092590332 90.31370544433594 37 87 37 L 6 37 C 2.686291217803955 37 0 34.3137092590332 0 31 L 0 6 C 0 2.686291217803955 2.686291217803955 0 6 0 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mf01ux =
    '<svg viewBox="306.0 500.4 21.0 1.0" ><path transform="translate(306.0, 500.38)" d="M 0 0 L 21 0" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8se097 =
    '<svg viewBox="317.0 491.4 1.0 18.0" ><path transform="translate(317.0, 491.38)" d="M 0 18 L 0 0" fill="none" stroke="#ffffff" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
