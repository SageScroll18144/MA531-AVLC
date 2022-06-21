#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct Vector{
    int k;//n-dimensões
    struct Vector *next;
}vector;

vector *initial;
vector *transition;

void build(int value){
    initial = (vector *)malloc(sizeof(vector));
    transition = initial;
    transition->k = value;
}
void put_new_dimension(int value, int isDone){
    transition->next = (vector *)malloc(sizeof(vector));
    transition = transition->next;
    transition->k = value;
    if(isDone) transition->next = NULL;
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
void print_vector(){
    transition = initial;
    printf("(");
    while(transition!=NULL){
        printf("%d, ", transition->k);
        transition = transition->next;
    }
    printf(")\n");
}

int main(){

    build(1);
    put_new_dimension(2, 0);
    put_new_dimension(3, 1);
    print_vector();
    

    return 0;
}