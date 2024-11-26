#include <math.h>
#include <stdio.h>
float square(float x){
  return x*x;
}
int is_within_distance(float x1 , float y1 , float x2 , float y2 , float dist){
  float a = sqrt(square(x2-x1)+square(y2-y1));
    if(a<dist){
      return 1;
    }else{
      return 0;
    }
}
int main(){
  int b=is_within_distance(5,3,10 ,6, 10);
  return 0;
}
