#include <iostream>
#include <cmath>
#include <functional>
#include <string>
#include <map>
#include <vector>
#include <limits>

#define INF (NAN)

using matrix = std :: vector < std :: vector <double> >;
using pair_with_weight = std::vector<std::pair<int, std::pair<int, double>>>;
using vector_pairs = std :: vector <std::pair<int,int >>;

double get_forbidden_cost() {return NAN;}
void reduce_row(matrix& cost_matrix, double& suma) {
    std::vector<double> v_kol;
    double inf = std::numeric_limits<double>::max();

    for (int i = 0; i < cost_matrix.size(); ++i) {
        double min = inf;
        for (int j = 0; j < cost_matrix[i].size(); ++j) {
            if (cost_matrix[i][j] < min)
                min = cost_matrix[i][j];
        }
        v_kol.push_back(min);
    }

    for (int i = 0; i < cost_matrix.size(); ++i) {
        for (int j = 0; j < cost_matrix[i].size(); ++j) {
            cost_matrix[i][j] = cost_matrix[i][j] - v_kol[i];
        }
        suma += v_kol[i];
    }
}

void reduce_col(matrix& cost_matrix, double& suma){
    std::vector<double > v_wier;
    double inf = std::numeric_limits<double>::max();

    for (int i = 0; i < cost_matrix.size(); ++i) {
        double min = inf;
        for (int j = 0; j < cost_matrix[i].size(); ++j) {
            if (cost_matrix[j][i] < min)
                min = cost_matrix[j][i];
        }
        v_wier.push_back(min);
    }

    for (int i = 0; i < cost_matrix.size(); ++i) {
        for (int j = 0; j < cost_matrix[i].size(); ++j) {
            cost_matrix[j][i] = cost_matrix[j][i] - v_wier[i];
        }
        suma += v_wier[i];
    }
}

bool are_zeros(matrix& cost_matrix){
    std :: vector<bool> v_bool;
    for (int i = 0; i < cost_matrix.size(); ++i) {
        for (int j = 0; j < cost_matrix[i].size(); ++j) {
            if (cost_matrix[j][i] == 0) {
                v_bool.push_back(true);
                break;
            }
        }
    }
    return v_bool.size() != cost_matrix.size();
}

pair_with_weight find_pairs(matrix& cost_matrix){
    std::vector<std::pair<int, std::pair<int, double>>> pairs;
    double inf = std::numeric_limits<double>::max();

    for (int i = 0; i < cost_matrix.size(); ++i) {
        for (int j = 0; j < cost_matrix[i].size(); ++j) {
            if (cost_matrix[i][j] == 0){
                double min1 = inf;
                double min2 = inf;
                for (int ii = 0; ii < cost_matrix.size(); ++ii) {
                    if (cost_matrix[ii][j] < min2 && ii != i)
                        min2 = cost_matrix[ii][j];
                }
                for (int jj = 0; jj < cost_matrix.size(); ++jj) {
                    if (cost_matrix[i][jj] < min1 && jj != j)
                        min1 = cost_matrix[i][jj];
                }
                double min = min1 + min2;
                pairs.push_back({i,{j, min}});
            }
        }
    }
    return pairs;
}

std::pair<int,int> find_max_pair(pair_with_weight pairs){
    std::pair<int,int> pair = {pairs[0].first, pairs[0].second.first};
    double max = 0;
    for (int i = 0; i < pairs.size(); ++i) {
        if (max < pairs[i].second.second)  {
            max = pairs[i].second.second;
            pair = {pairs[i].first, pairs[i].second.first};
        }
    }
    return pair;
}

void cut_matrix(matrix & cost_matrix, std::pair<int,int> pair) {
    int first = pair.first;
    int secound = pair.second;
    cost_matrix[secound][first] = NAN;
    for (int i = 0; i < cost_matrix.size(); ++i) {
        for (int j = 0; j < cost_matrix[i].size(); ++j) {
            if (i == first || j == secound)
                cost_matrix[i][j] = NAN;
        }
    }
}

std :: vector<int> dict_to_vector(vector_pairs best_path_dict){
    std :: vector<int> best_path;
    best_path.push_back(best_path_dict[0].first+1);
    int second = best_path_dict[0].second;

    for (int i = 0; i < best_path_dict.size(); ++i) {
        for (int j = 0; j < best_path_dict.size(); ++j) {
            if (second == best_path_dict[j].first){
                best_path.push_back(best_path_dict[j].first+1);
                second = best_path_dict[j].second;
                break;
            }
        }
    }

    return best_path;
}

std :: vector <int> tsp ( matrix cost_matrix ) {
    std :: vector <std::pair<int,int >> best_path_dict;
    std::vector<std::pair<int, std::pair<int, double>>> pairs;
    std::pair<int, int > pair;
    std::vector<int> best_path;
    double suma = 0;

    for (int i = 0; i < cost_matrix.size(); ++i) {
        reduce_row(cost_matrix, suma);
        if (are_zeros(cost_matrix))
            reduce_col(cost_matrix, suma);
        pairs = find_pairs(cost_matrix);
        pair = find_max_pair(pairs);
        cut_matrix(cost_matrix, pair);
        best_path_dict.push_back(pair);
    }
    best_path = dict_to_vector(best_path_dict);
    return best_path;
}



int main()
{
    
    return 0;
}

/*
std :: vector <std::pair<int, std::pair<int, double>>> matrix_to_dict(std :: vector < std :: vector <double > > cost_matrix) {
    std::vector<std::pair<int, std::pair<int, double>>> dict;
    for (int i = 0; i < cost_matrix.size(); ++i) {
        for (int j = 0; j < cost_matrix[i].size(); ++j) {
            dict.push_back({i, {j, cost_matrix[i][j]}});
        }
    }
    return dict;
}



double min(std::vector <double> v){
    double inf = std::numeric_limits<double>::max();
    double x = inf;
    for (int i = 0; i<v.size(); ++i)
        if (v[i] < x) {
            x = v[i];
        }

    return x;
}



    double inf = std::numeric_limits<double>::max();

    std::vector<int> best_path;
    std::vector<double > v_kol;
    std::vector<double > v_wier;
    std::vector<std::pair<int, std::pair<int, double>>> pairs;
    std::vector<double > v_min_wier;
    std::vector<double > v_min_kol;
    double suma = 0;

//    {
        std :: vector<bool> v_bool;
        for (int i = 0; i < cost_matrix.size(); ++i) {
            double min = inf;
            for (int j = 0; j < cost_matrix[i].size(); ++j) {
                if (cost_matrix[i][j] < min)
                    min = cost_matrix[i][j];
            }
            v_kol.push_back(min);
        }

        for (int i = 0; i < cost_matrix.size(); ++i) {
            for (int j = 0; j < cost_matrix[i].size(); ++j) {
                cost_matrix[i][j] = cost_matrix[i][j] - v_kol[i];
            }
            suma += v_kol[i];
        }

        for (int i = 0; i < cost_matrix.size(); ++i) {
            for (int j = 0; j < cost_matrix[i].size(); ++j) {
                if (cost_matrix[j][i] == 0) {
                    v_bool.push_back(true);
                    break;
                }
            }
        }

    for (int i = 0; i < cost_matrix.size(); ++i) {
        double min = inf;
        for (int j = 0; j < cost_matrix[i].size(); ++j) {
            if (cost_matrix[j][i] < min)
                min = cost_matrix[j][i];
        }
        v_wier.push_back(min);
    }

    for (int i = 0; i < cost_matrix.size(); ++i) {
        for (int j = 0; j < cost_matrix[i].size(); ++j) {
            cost_matrix[j][i] = cost_matrix[j][i] - v_wier[i];
        }
        suma += v_wier[i];
    }

    for (int i = 0; i < cost_matrix.size(); ++i) {
        for (int j = 0; j < cost_matrix[i].size(); ++j) {
            if (cost_matrix[i][j] == 0){
                double min1 = inf;
                double min2 = inf;
                for (int ii = 0; i < cost_matrix.size(); ++i) {
                    for (int jj = 0; j < cost_matrix[i].size(); ++j) {
                        if (cost_matrix[i][jj] < min1 && jj != j)
                            min1 = cost_matrix[i][jj];
                        if (cost_matrix[ii][j] < min2 && jj != j)
                            min2 = cost_matrix[ii][j];
                    }
                }
                double min = min1 + min2;
                pairs.push_back({i,{j, min}});
            }
        }
    }

        v_kol.clear();
        v_wier.clear();
        v_bool.clear();


//    }while (cost_matrix.size() > 1);

    std :: vector<int> vvv{0};
    return vvv;
 */
