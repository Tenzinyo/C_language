int strength_reduction1(int x) {
    return x*16;
}
int strength_reduction2(int x) {
    return x*5; //x shift 2^2 and 2^0
}
void strength_reduction_loop(int array[], int len, int scale) {
    for (int i = 0; i < len; i++) { 
        array[i] = i*scale; 
    }
}
int strength_reduction_con(int a, int b) {
    if (a < b) // 
        return a;
    else
        return b;
}
int a_function(int a);
int another_function(int a);

int cse1(int x, int y) {
    return a_function(x+y*3) + another_function(y*3-x);
}
