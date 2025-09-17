.globl myFunction

#a starts in edi
#b starts in rsi

myFunction:
  leal (%edi,%edi,2), %eax # add the edi which is a and return the result in eax
  # eax = 3 * a;
  movl (%rsi), %ebx # load B into ebx
  # b_local = *b ; 
  leal (%ebx, %ebx, 8), %ecx
  # ecx = 9 * b
  addl %ebx, %ecx
  #  ecx +=ebx or another way , ecx = 10 * b_local from 9b + 1
  subl %ecx, %eax
  # eax -= ecx , or eax = 3a-10b_local
  addl $-2, %eax
  # eax+=-2, 3a - 10b -2
  retq
  # return eax
