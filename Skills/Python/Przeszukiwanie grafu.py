# Rafał Górecki 302847

from typing import Set, Dict, List, NamedTuple
import networkx as nx


class TrailSegmentEntry(NamedTuple):
    va: int = None
    vb: int = None
    w: int = None
    weight: float = None


def neighbors(G: Dict[int, List[int]], v: int = 1, d: int = 1) -> Set:
    # ustawienie wszystkiego na nie sprawdzone = 0
    kolor = {}
    for u in G:
        kolor[u] = 0

    kolor[v] = 1  # obecny wieżchołek - v ustawiamy na odwiedzone = 1
    neighbourhood = []  # lista sąsiadów
    lst = []
    q = [v]  # kolejka

    while d > 0:  # ile razy ma się wykonać
        while q and kolor[q[0]] == 1:  # wykonaj tylko gdy sprawdzone
            n = q[0]
            q.pop(0)
            for i in G[n]:
                if i not in neighbourhood:
                    lst.append(i)  # dopisz sąsiadów jeżeli są nowi
            kolor[n] = 2  # ustaw jako zrobione
        q.extend(lst)
        neighbourhood.extend(lst)
        for j in lst:
            kolor[j] = 1
        d -= 1
    return set(neighbourhood)


def load_multigraph_from_file(a: str):
    G = nx.MultiDiGraph()
    lst = []
    with open(a, "r") as file:
        for line in file:
            line = line.strip()
            if len(line) > 1:
                tolken = line.split()
                a = int(tolken[0])
                b = int(tolken[1])
                c = float(tolken[2])
                tlp = (a, b, c)
                lst.append(tlp)
    G.add_weighted_edges_from(lst)
    return G


def find_min_trail(G: nx.MultiDiGraph, v_start: int = 1, v_end: int = None) -> List[TrailSegmentEntry]:
    if v_end is None:
        v_end = len(G)
    lst = []
    lst_t: List[TrailSegmentEntry] = []
    g = nx.dijkstra_path(G, v_start, v_end)
    for i in range(0, len(g) - 1):
        for ii, e in enumerate(G[g[i]][g[i + 1]]):
            lst.append(G[g[i]][g[i + 1]][e]['weight'])
        min_ = min(lst)
        idx = lst.index(min_)
        lst.clear()
        trail = TrailSegmentEntry(g[i], g[i + 1], idx, min_)
        lst_t.append(trail)
    return lst_t


def trail_to_str(trail: List[TrailSegmentEntry]) -> str:
    s = ""
    total = 0
    for t in trail:
        total += t.weight
        s += "{} -[{}: {}]-> ".format(t.va, t.w, t.weight)
    s += "{} (total = {})".format(trail[-1].vb, total)
    return s




'''
G = {
    1: [2, 4],
    2: [3],
    3: [],
    4: [5],
    5: [2, 6],
    6: [],
    7: [1]
}

a = neighbors(G)
a = list(a)
print(a[0])
'''

'''
    if v_end is None:
        v_end = len(G)
    dct_dis = {}
    poprzednik = {}
    trial = TrailSegmentEntry
    lst_v = []
    for i in G:
        dct_dis[i] = math.inf
        if i != v_start:
            lst_v.append(i)
    dct_dis[v_start] = 0
    for i in G:
        for ii in G[i]:
            for iii in G[i][ii]:
                j = G[i][ii][iii]['weight']
                if j < dct_dis[i+1]:
                    dct_dis[i+1] = j
                trial.va = i
                trial.vb = ii
                trial.w = iii
                trial.weight = j

    a = nx.dijkstra_path(G,v_start,v_end)

    print(a)
    return None
    
    
    
    
    
        for i, e in enumerate(g):
        trial.va = e
        print(trial.va)
        if i < len(g)-1:
            trial.vb = g[i+1]
        else:
            trial.vb = None
        if trial.vb is None:
            trial.w = None
        else:
            for ii in range(len(G[e][trial.vb])):
                print(trial.vb)
                trial.w = ii
                print(trial.w)
                
'''
