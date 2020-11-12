# 1. W dowolnie wybranym przez siebie języku zaimplementować metodę Newtona-Raphsona, w celu wyznaczenia pierwiastka kwadratowego z dowolnej liczby rzeczywistej większej od zera. 



def sqrt(value: float, accuracy: float = 1e-8) -> float:
    # Używam wzoru rekurencyjnego x_k+1 = x_k - f(x)/f_prim(x)      https://pl.wikipedia.org/wiki/Metoda_Newtona
    x = 1
    f = lambda x: x ** 2 - value
    f_prim = lambda x: 2 * x
    while abs(f(x)) > accuracy:
        x = x - f(x) / f_prim(x)
    return x