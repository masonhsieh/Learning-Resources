#include <sstream>
#include <vector>
#include <iostream>
using namespace std;

vector<int> parseInts(string str) {
    char ch;
    stringstream ss(str);
    vector<int> arr;

    while (!ss.eof())
    {
        int temp;
        ss >> temp >> ch;
        arr.push_back(temp);
    }

    return arr;

}

int main() {
    string str;
    cin >> str;
    vector<int> integers = parseInts(str);
    for(int i = 0; i < integers.size(); i++) {
        cout << integers[i] << "\n";
    }
    
    return 0;
}


