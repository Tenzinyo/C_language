#include <stdio.h>
int main(){
    int x = 0x00000123;
    int* xp = &x;
    short xs0,xs1; //16 bit integer

    xs0 = (short)(*xp); //casts the dereferenced value to a short type and assigns it to variable
    xs1 = *((short*)xp); //dereferences this cast pointer to get the short value at the memory location xp
    // little-endian: xs0 ==xs1 , gives consistent results
    // big-endian : xs1==0
}