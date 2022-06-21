#include <stdio.h>
#include <stdlib.h>
#include <math.h>
//Vetor 2D
typedef struct Vetor{
    int x, y;
    double mag;
}vetor;

double get_norma(vetor u){
    return sqrt(u.x*u.x+u.y*u.y);
}
double scale_product(vetor u, vetor v){
    return u.x*v.x+u.y*v.y;
}
double sp_const(int t, vetor v){
    return t*v.x+t*v.y;
}
double get_cos(vetor u, vetor v){
    return scale_product(u, v)/(get_norma(u)*get_norma(v));
}
double proj(vetor u, vetor v){
    return sp_const(scale_product(u, v)/scale_product(v, v), v);
}

int main(){
    
    return 0;
}