#include <iostream>

int main() {
	freopen("./cdck.inp", "r", stdin);
	freopen("./cdck.out", "w+", stdout);

	int start, stop;
	std::cin >> start >> stop;

	int max = 0;
	for (int i = start; i <= stop; i++) {
		int j = i;
		int count = 1;
		while (j != 1) {
			if (j % 2 == 0) {
				j /= 2;
			} else {
				j = 3*j + 1;
			}
			count++;
		}
		max = (count>max)?count:max;
	}

	std::cout << max;
}