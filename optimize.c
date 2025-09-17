
int afunction(int* a, int* b) {
  *a = 3;
  *a = (*b)*2;
  int x = *a;
  return x;
}
