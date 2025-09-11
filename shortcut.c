#include <stddef.h>
int function(int* val){
if(val){ //treat this pointer as a boolean 
    if (*val==0){
        return 1;
    }
    return *val;
    }
return 0;
}
int main() {
    int a=5;
    int a_copy = function(5);
    int b = a<<-1;
    printf("%x",b);
    return 0;
}

