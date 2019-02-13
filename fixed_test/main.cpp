#include <iostream>
#include <cmath>
#include <bitset>
#include <climits>

using namespace std;

class Fixed {
public:
    typedef int fixed_t; // Q8.24
    fixed_t f;

    Fixed(double d) {
        f = fixed_t(d * 16777216);
    }

    Fixed(fixed_t f) {
        this->f = f;
    }

    double to_double() const {
        return double(this->f)/double(16777216);
    }

    Fixed operator +(Fixed b) {
        return Fixed(fixed_t(f + b.f));
    }

    Fixed operator -(Fixed b) {
        return Fixed(f - b.f);
    }

    Fixed operator *(Fixed b) {
        long long int tmp = f;
        tmp *= b.f;
        tmp >>= 24;
        if(tmp > INT_MAX)
            return Fixed(fixed_t(INT_MAX));
        if(tmp < INT_MIN)
            return Fixed(fixed_t(INT_MIN));
        return Fixed(fixed_t(tmp));
    }

    Fixed operator /(const Fixed b) const {
        long long int temp = ((long long int)(f))<<24;
        /*if ((temp >= 0 && b.f >= 0) || (temp < 0 && b.f < 0)) {
            temp += (b.f >> 1);
        } else {
            temp -= (b.f >> 1);
        }*/
        return Fixed(fixed_t(temp/b.f));
    }

    double get_approx_isqrt(fixed_t a) {
        //cerr << bitset<32>(a) << endl;
        int idx = 32-__builtin_clz(a)-1;
        int mask = 1<<idx | 1<<(idx-1) | 1<<(idx-2) | 1<<(idx-3) | 1<<(idx-4) | 1<<(idx-5) | 1<<(idx-6) | 1<<(idx-7);
        //cout << bitset<32>(a) << "\n" << bitset<32>(mask) << endl;

        //cout << bitset<32>(a) << endl;
        //cout << bitset<32>(a) << "\n" << bitset<32>(mask) << endl;

        //cerr << bitset<32>(a) << endl;
        //if(128.0 - double(1.0/sqrt(Fixed(a).to_double())) < 1e-5) {
        a = a&mask;
        //}
        return 1.0/sqrt(Fixed(a).to_double());
    }

    Fixed isqrt() {
        if(f <= 1024.0)
            return Fixed(INT_MAX);
        if(f < 1024+16)
            return Fixed(1.0/sqrt(Fixed(f).to_double())); //hardcoded

        Fixed y = Fixed(get_approx_isqrt(f));//Fixed((Fixed(1.0)/Fixed(f)).f);
        Fixed x = Fixed(int(f>>1));
        Fixed th = Fixed(1.5);

        y = y*(th - (x*y)*y);
        //y = y*(th - (x*y)*y);
        //y = y * (th - x*y*y);
        //y = y * (th - x*y*y); // 4 iteracje to optimum
        /*y = y * (th - x*y*y);
        y = y * (th - x*y*y);
        y = y * (th - x*y*y);
        y = y * (th - x*y*y);
        y = y * (th - x*y*y);*/
        return y;
    }

    double get_approx_inv(fixed_t a) {
        //cerr << bitset<32>(a) << endl;

        int idx = 32-__builtin_clz(a)-1;
        int mask = 1<<idx | 1<<(idx-1) | 1<<(idx-2) | 1<<(idx-3) | 1<<(idx-4) | 1<<(idx-5) | 1<<(idx-6) | 1<<(idx-7);
        //cout << bitset<32>(a) << "\n" << bitset<32>(mask) << endl;

        //cout << bitset<32>(a) << endl;
        //cout << bitset<32>(a) << "\n" << bitset<32>(mask) << endl;

        //cerr << bitset<32>(a) << endl;
        //if(128.0 - double(1.0/sqrt(Fixed(a).to_double())) < 1e-5) {
        a = a&mask;
        //}
        cout << bitset<32>((Fixed(1.0/(Fixed(a).to_double()))).f) << endl;
        return 1.0/Fixed(a).to_double();
    }

    Fixed inv() {
        if(f<=131072)
            return Fixed(INT_MAX);
        if(f < 131072+1024)
            return Fixed(1.0/(Fixed(f).to_double())); //hardcoded

        Fixed y = Fixed(get_approx_inv(f));//Fixed((Fixed(1.0)/Fixed(f)).f);
        Fixed x = Fixed(f/*>>1*/);
        Fixed th = Fixed(2.0);

        y = y * (th - x*y);
        //y = y * (th - x*y);
        //y = y * (th - x*y);
        //y = y * (th - x*y); // 4 iteracje to optimum
        /*y = y * (th - x*y*y);
        y = y * (th - x*y*y);
        y = y * (th - x*y*y);
        y = y * (th - x*y*y);
        y = y * (th - x*y*y);*/
        return y;
    }

    friend ostream& operator <<(ostream& s, const Fixed& t) {
        return s << "N: " << t.f << " D: " << t.to_double();
    }
};

void generate_inv_sqrt_lut() {
    cout << "memory_initialization_radix=2;" << endl;
    cout << "memory_initialization_vector=" << endl;
    for(int i = 1024; i<1024+16; i++) {
        int d = Fixed(1.0/sqrt(Fixed(i).to_double())).f;
        if(d<0)
            d = Fixed(INT_MAX).f;
        cout << bitset<32>(d) << "," << endl;
    }
    for(int i = 10; i<31; i++) {
        for (int j = 0; j < 128; j++) {
            int n = (1 << i) | (j<<(i-7));
            int d = Fixed(1.0/sqrt(Fixed(n).to_double())).f;
            cout << bitset<32>(d);
            if(i==30 && j == 127)
                cout << ";\n";
            else
                cout << ",\n";
        }
    }
}

void generate_inv_lut() {
    cout << "memory_initialization_radix=2;" << endl;
    cout << "memory_initialization_vector=" << endl;
    for(int i = 131072; i<131072+1024; i++) {
        int d = Fixed(1.0/Fixed(i).to_double()).f;
        if(d<0)
            d = Fixed(INT_MAX).f;
        cout << bitset<32>(d) << "," << endl;
    }
    for(int i = 17; i<31; i++) {
        for (int j = 0; j < 128; j++) {
            int n = (1 << i) | (j<<(i-7));
            int d = Fixed(1.0/Fixed(n).to_double()).f;
            cout << bitset<32>(d);
            if(i==30 && j == 127)
                cout << ";\n";
            else
                cout << ",\n";
        }
    }
}

int main() {
    cout.precision(10);
    cout << fixed;

    //cout << bitset<32>(Fixed(2.0).f) << endl;
    //cout << bitset<32>(Fixed(0.012360).f) << endl;
    //cout << Fixed(0.012360).inv().to_double() << endl;
    //generate_inv_sqrt_lut();
    //generate_inv_lut();

    for(int i = 131072; i<INT_MAX-2000; i+=1000) {
        if(i<0)
            return 0;
        Fixed f = Fixed(i);
        double t = f.to_double();
        double r = Fixed(t).isqrt().to_double();
        double e = 1.0/sqrt(t);
        cout << t << " " << e << " " << r << " " << e-r << endl;
    }

    return 0;
}
