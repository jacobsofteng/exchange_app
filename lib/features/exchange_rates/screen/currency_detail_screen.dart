import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../common/utils/extension_on_context.dart';
import '../../../config/theme/app_color_scheme.dart';
import '../bloc/exchange_rates_bloc.dart';
import '../widgets/line_chart.dart';
import '../widgets/location_toggle_button.dart';

@RoutePage()
class CurrencyDetailScreen extends StatelessWidget {
  const CurrencyDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeRatesBloc, ExchangeRatesState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: AppColorScheme.haiti),
              onPressed: () => context.router.pop(),
            ),
            centerTitle: true,
            title: Text(
              'Currency Details',
              style: context.appTextTheme.appBarTitleTextStyle,
            ),
            elevation: 0,
            backgroundColor: context.appColors.appBarBackgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(28),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Currency code: ',
                        style: context.appTextTheme.currencyCodeTextStyle,
                      ),
                      state.selectedCurrency == null
                          ? Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                width: 100,
                                height: 20,
                                color: Colors.white,
                              ))
                          : Text(
                              state.selectedCurrency!.code,
                              style: context.appTextTheme.codeTextStyle,
                            ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text('Description: ', style: context.appTextTheme.currencyCodeTextStyle),
                      state.selectedCurrency == null
                          ? Shimmer.fromColors(
                              baseColor: Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                width: 100,
                                height: 20,
                                color: Colors.white,
                              ))
                          : Text(
                              state.selectedCurrency!.description,
                              style: context.appTextTheme.codeTextStyle,
                            ),
                    ],
                  ),
                  const SizedBox(height: 100),
                  state.selectedCurrency == null
                      ? Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            width: 300,
                            height: 300,
                            color: Colors.white,
                          ))
                      : CustomLineChart(rates: state.selectedCurrency!.rates),
                  const SizedBox(height: 30),
                  const LocationToggleButton(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
