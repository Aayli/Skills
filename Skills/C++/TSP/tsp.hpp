// Rafal Gorecki, 302847


#ifndef KOM_TSP_HPP
#define KOM_TSP_HPP

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

double get_forbidden_cost();
void reduce_row(matrix& cost_matrix, double& suma);
void reduce_col(matrix& cost_matrix, double& suma);
bool are_zeros(matrix& cost_matrix);
pair_with_weight find_pairs(matrix& cost_matrix);
std::pair<int,int> find_max_pair(pair_with_weight pairs);
void cut_matrix(matrix & cost_matrix, std::pair<int,int> pair);
std :: vector<int> dict_to_vector(vector_pairs best_path_dict);
std :: vector <int> tsp ( matrix cost_matrix );

#endif //KOM_TSP_HPP
