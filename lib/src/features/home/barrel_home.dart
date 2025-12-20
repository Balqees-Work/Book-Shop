// data
//-> model
import 'package:book_shop_bal/src/injection/container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part './data/model/m_book.dart';
//-> repository
part './data/repository/r_home_impl.dart';
//-> source
//--> static
part './data/source/static/data_static_top_search_book.dart';

// domain
//-> entities
part './domain/entities/e_book.dart';
//-> repository
part './domain/repository/r_home.dart';

//-> usecase
part './domain/usecase/case_get_books_top_search.dart';

// presentation
//-> page
part './presentation/page/p_home.dart';

//-> widgets
part './presentation/widgets/w_home_card.dart';
