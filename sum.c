long plus(long x, long y);
void sumstore(long x, long y, long *dest){
    long t = plus(x,y);
    *dest = t; //store t where designated by dest. In assembly = movq %rax, (%rbx)
    // object code = 0x40059e
}

// sumstore x86-64 assembly
// pushq  %rbx
// movq  %rdx,  %rbx
// call  plus
    // directly accessing memory out of the stack, moving from register rax to mem loc pointed to by rbx
// movq  %rax, (%rbx) 
    // rax is place that the return value was in the function
// popq  %rbx // pop to execute a return func
// ret  
