import 'package:nocia/domain/news/news.dart';
import 'package:nocia/domain/news/service/rss_category.dart';
import 'package:webfeed/domain/rss_item.dart';

abstract class NewsFactoryBase {
  News create({required RssItem item});
}