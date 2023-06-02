import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../common/models/state_status.dart';
import '../../../common/utils/debouncer.dart';
import '../../../common/utils/extension_on_context.dart';
import '../../../common/utils/infinite_list_pagination.dart';
import '../../../config/theme/app_color_scheme.dart';
import '../../../generated_assets/assets.gen.dart';
import '../../../routes/app_router.gr.dart';
import '../bloc/exchange_rates_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExchangeRatesBloc, ExchangeRatesState>(
      builder: (context, state) {
        return Scaffold(
          body: InfiniteListPagination(
            onMaxScrollExtent: () => _debouncer.run(() {
              context.read<ExchangeRatesBloc>().add(
                    const ExchangeRatesEvent.fetchCurrencies(more: true),
                  );
            }),
            builder: (context, scrollController) => CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverAppBar(
                  centerTitle: true,
                  title: Text(
                    'Exchange Rates App',
                    style: context.appTextTheme.appBarTitleTextStyle,
                  ),
                  elevation: 0,
                  floating: false,
                  backgroundColor: context.appColors.appBarBackgroundColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(28),
                    ),
                  ),
                ),
                (state.status == const StateStatus.loading()) || (state.status == const StateStatus())
                    ? SliverToBoxAdapter(
                        child: Center(child: Lottie.asset(Assets.lottie.loading)),
                      )
                    : SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (_, int index) {
                            return GestureDetector(
                              onTap: () {
                                context.read<ExchangeRatesBloc>().add(
                                      ExchangeRatesEvent.fetchCurrency(state.currencies[index].code),
                                    );
                                context.router.push(const CurrencyDetailScreen());
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColorScheme.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Currency code: ',
                                          style: context.appTextTheme.currencyCodeTextStyle,
                                        ),
                                        Text(
                                          state.currencies[index].code,
                                          style: context.appTextTheme.codeTextStyle,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          'Latest rate: ${state.currencies[index].rates.last}',
                                          style: context.appTextTheme.latestRateTextStyle,
                                        ),
                                        Icon(
                                          state.currencies[index].randomColor == Colors.red
                                              ? Icons.arrow_drop_down
                                              : Icons.arrow_drop_up,
                                          color: state.currencies[index].randomColor,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          childCount: state.currencies.length,
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
