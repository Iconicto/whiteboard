import 'package:whiteboard/constants/text_styles.dart';
import 'package:whiteboard/helpers/screen_util.dart';
import 'package:whiteboard/helpers/utils.dart';
import 'package:whiteboard/model/news.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class NewsItem extends StatelessWidget {
  final News _news;

  NewsItem(this._news);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Utils.launchURL(_news.link);
      },
      child: Padding(
        padding: ScreenUtil.getPaddingAll(8.0),
        child: Container(
          child: Row(
            children: <Widget>[
              // Padding(
              //   padding: ScreenUtil.getPaddingAll(5),
              //   child: ClipRRect(
              //     borderRadius: ScreenUtil.getBorderRadiusCircular(10.0),
              //     child: Image.network(
              //       _news.image,
              //       height: ScreenUtil.getHeight(10),
              //       width: ScreenUtil.getWidth(25),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),

              Container(
                // height: ScreenUtil.getHeight(15),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _news.source.name == "MODULE"
                              ? Padding(
                                  padding:
                                      ScreenUtil.getPaddingLTRB(1, 1, 2, 1),
                                  child: Icon(
                                    Icons.book,
                                    color: Colors.black54,
                                  ),
                                )
                              : Padding(
                                  padding:
                                      ScreenUtil.getPaddingLTRB(1, 1, 2, 1),
                                  child: Icon(
                                    Icons.add_alert,
                                    color: Colors.black54,
                                  ),
                                ),
                          Text(
                            _news.title,
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyles.cardTitle,
                          ),
                        ],
                      ),
                    ),
                    _news.source.name == "MODULE"
                        ? Padding(
                            padding:
                                const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Study materials included:"),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    8.0,
                                    1.5,
                                    8.0,
                                    1.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Client-Side.pptx",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Quiz 01",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                      Text(
                                        "Flash Assignment",
                                        style: TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        : Container(),
                    Container(
                      width: ScreenUtil.getWidth(88),
                      alignment: Alignment.centerRight,
                      child: Text(
                        timeago.format(_news.time),
                        style: TextStyles.subtitle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
