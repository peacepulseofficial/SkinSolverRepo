import '/components/rating_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'results_page_skin_ratings_copy_widget.dart'
    show ResultsPageSkinRatingsCopyWidget;
import 'package:flutter/material.dart';

class ResultsPageSkinRatingsCopyModel
    extends FlutterFlowModel<ResultsPageSkinRatingsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ratingHeader component.
  late RatingHeaderModel ratingHeaderModel;

  @override
  void initState(BuildContext context) {
    ratingHeaderModel = createModel(context, () => RatingHeaderModel());
  }

  @override
  void dispose() {
    ratingHeaderModel.dispose();
  }
}
