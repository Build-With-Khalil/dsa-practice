import 'package:flutter/foundation.dart';

void main() {
  List<int> prices = [7, 1, 5, 3, 6, 4];
  if (kDebugMode) {
    print(maxProfit(prices));
  }
}

int maxProfit(List<int> prices) {
  if (prices.isEmpty) return 0;
  int minPrice = prices[0];
  int maxProfit = 0;
  for (int i = 1; i < prices.length; i++) {
    if (prices[i] < minPrice) {
      minPrice = prices[i];
    } else {
      maxProfit =
          maxProfit < (prices[i] - minPrice)
              ? maxProfit
              : (prices[i] - minPrice);
    }
  }
  return maxProfit;
}
