/*
    Lista encadeada para um Vetor de n-Dimensões
    Autor: Felipe Santos.
*/

#include <stdio.h>
#include <stdlib.h>

typedef struct Vector{
    int k;//n-dimensões
    struct Vector *next;
}vector;

vector *initial;
vector *transition;

void build(){
    initial = (vector *)malloc(sizeof(vector));
    transition = initial;
}
void put_new_dimension(int value){
    transition->k = value;
    transition = transition->next; 
}
void done(){
    transition->next = NULL;
}
int get_dimension_value(int n){
    int i=0;
    transition = initial;
    while(i<=n){
        transition = transition->next;
        i++;
    }
    return transition->k;
}
int main(){

    build();

    return 0;
}