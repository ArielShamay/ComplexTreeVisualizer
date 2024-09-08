// Name - Ariel Shamay
// CPP_EX_4
// Mail - Arielsh49@gmail.com

#include "Complex.hpp"

using namespace std;

Complex::Complex(double re , double im )
{
    real_ = re;
    image_ = im;
}
 
double Complex::getReal() const
{
    return real_;
}

double Complex::getImage() const
{
    return image_;
}

bool Complex::operator>(const Complex &other) const
{
    return (real_ > other.getReal()) || (real_ == other.getReal() && image_ > other.getImage());
}