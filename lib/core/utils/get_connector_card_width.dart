import '../../presentation/widgets/chargin_point_page/connectors/connectors_list_view.dart';

double getConnectorCardWidth(double maxWidth, int nOfConnectors) {
  final widthOfSeparators = separatorWidth * (nOfConnectors - 1);
  const widthOfHorizontalPadding = listViewHorizontalPadding * 2;
  return (maxWidth - widthOfSeparators - widthOfHorizontalPadding) /
      nOfConnectors;
}
