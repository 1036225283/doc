## softmax

$f(s^i)=\frac{(e^z)^i}{\sum_j^N(e^z)^j}$

$f(s^i)=(e^z)^i*{\sum_j^N(e^z)^j}^{-1}$

$f(a)=(e^z)^i$

$f(b)={\sum_j^N(e^z)^j}^{-1}$

$f'(s^i)=f'(a)*f(b)+f'(b)*f(a)$

###i=j

$f'(s^i)=(e^z)^i*{\sum_j^N(e^z)^j}^{-1}-{\sum_j^N(e^z)^j}^{-2}*(e^z)^i$

$f'(s^i)=\frac{(e^z)^i}{\sum_j^N(e^z)^j}-\frac{(e^z)^i}{{\sum_j^N(e^z)^j}^2}$

$f'(s^i)=\frac{(e^z)^i*\sum_j^N(e^z)^j}{{\sum_j^N(e^z)^j}^2}-\frac{(e^z)^i}{{\sum_j^N(e^z)^j}^2}$

$f'(s^i)=\frac{(e^z)^i*\sum_j^N(e^z)^j-(e^z)^i}{{\sum_j^N(e^z)^j}^2}$

###i!=j

$f'(s^i)=(e^z)^i*{\sum_j^N(e^z)^j}^{-1}$



$s^i=\frac{(e^z)^i}{(e^z)^1+(e^z)^2+(e^z)^3}$

$s^1=\frac{(e^z)^1}{(e^z)^1+(e^z)^2+(e^z)^3}$

$s^2=\frac{(e^z)^2}{(e^z)^1+(e^z)^2+(e^z)^3}$

$s^3=\frac{(e^z)^3}{(e^z)^1+(e^z)^2+(e^z)^3}$



## loss

$loss={-\sum_i^Ny^i*ln(s^i)}$

通常只有一个期望是1

$loss=-y^i*ln(s^i)$

$loss=-\frac{y^i}{s^i}$



$f(x)=3*ln(x)$

$f'(x)=\frac{3}{x}$