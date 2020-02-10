## softmax

$f(s^i)=\frac{(e^z)^i}{\sum_j^N(e^z)^j}$

$f(s^i)=(e^z)^i*{\sum_j^N(e^z)^j}^{-1}$			   $f'(s^i)=f'(a)*f(b)+f'(b)*f(a)$

$f(a)=(e^z)^i$										$f'(a)=(e^z)^i$

$f(b)={\sum_j^N(e^z)^j}^{-1}$							$f'(b)=(e^z)^j*-{\sum_j^N(e^z)^j}^{-2}$



$f'(s^i)=(e^z)^i*{\sum_j^N(e^z)^j}^{-1}+(e^z)^j*-{\sum_j^N(e^z)^j}^{-2}*(e^z)^i$

$f'(s^i)=\frac{(e^z)^i}{\sum_j^N(e^z)^j}-\frac{(e^z)^i*(e^z)^j}{{\sum_j^N(e^z)^j}^2}$



###i=j

$f'(s^i)=s^i-s^i*s^i$

$f'(s^i)=s^i(1-s^i)$

###i!=j

$f'(s^i)=-s^i*s^j$



$s^i=\frac{(e^z)^i}{(e^z)^1+(e^z)^2+(e^z)^3}$



## loss

$loss={-\sum_i^Ny^i*ln(s^i)}$

通常只有一个期望是1

$loss=-y^i*ln(s^i)$

$loss=-\frac{y^i}{s^i}$



$f(x)=3*ln(x)$

$f'(x)=\frac{3}{x}$