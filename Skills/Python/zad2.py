# 2. 2.	W dowolnie wybranym przez siebie języku zaimplementować algorytm kwadratury gaussa, do wyznaczania wartości całki oznaczonej.

# Integral Czebszew lepiej poradzi sobie z funkcjami zmieniającymi się dynamicznie na początku i końcu przedziału

def integral_basic(function, a: float, b: float, numOfNodes: int = 100) -> Optional[float]:
    if numOfNodes <= 0:
        return None
    x = np.linspace(a, b, numOfNodes)
    y = function(x)
    x = x[1:] - x[:numOfNodes-1]        #Wysokość rombu
    y = y[:numOfNodes-1] + y[1:]        #Suma podstaw rombu
    integral = 0.5*(x @ y.T)
    return integral


def integral_czebszew(function, a: float, b: float, numOfNodes: int = 100) -> Optional[float]:
    if numOfNodes <= 0:
        return None
    k = np.linspace(1, numOfNodes + 1, numOfNodes)
    x = 0.5 * (b - a) * np.cos((2 * k - 1) / (2 * numOfNodes) * np.pi) + 0.5 * (a + b)
    y = function(x)
    x = x[:numOfNodes-1] - x[1:]        #Wysokość rombu - v(n) = v(n) - v(n+1), ponieważ x ze względu na cos jest funkcją malejącą od b do a  
    y = y[:numOfNodes-1] + y[1:]        #Suma podstaw rombu
    integral = 0.5*(x @ y.T)
    return integral