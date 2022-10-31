#include <iostream>

int main() {
	freopen("./daycon.inp", "r", stdin);
	freopen("./daycon.out", "w+", stdout);

	int num_of_nums, m;
	std::cin >> num_of_nums;

	int nums[num_of_nums] = {};
	for (int i = 0; i < num_of_nums; i++) {
		std::cin >> nums[i];
	}
	std::cin >> m;

	int max, start = 0;
	for (int i = 0; i <= num_of_nums-m; i++) {
		int sum = 0;
		for (int j = i; j < i + m; j++) {
			sum += nums[j];
		}
		if (sum > max) {
			max = sum;
			start = i;
		}
	}

	for (int i = start; i < start + m; i++) {
		std::cout << nums[i] << ' ';
	}
}