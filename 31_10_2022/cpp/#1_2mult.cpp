#include <iostream>

int main() {
	freopen("./2mult.inp", "r", stdin);
	freopen("./2mult.out", "w+", stdout);

	std::string a, b;
	std::cin >> a >> b;

	int sum = 0;
	for (char i : a) {
		for (char j : b) {
			sum += (i-48) * (j-48);
		}
	}

	std::cout << sum << std::endl;
}