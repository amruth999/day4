
#include<stdio.h>
#include<math.h>

struct sum
{
   float a[100];
   int b;
   float tmp;
   float add;
};


struct sum input()
{
   struct sum i;
   printf("How many elements you want to add?\n");
   scanf("%d",&i.b);
   printf("Enter elements:\n");
   for(int k=0;k<i.b;k++)
   {
       scanf("%f",&i.a[k]);
   }
   return i;
}

struct sum compute()
{
   struct sum i;
   i.add = 0;
   for(int k = 0; k<i.b;k++)
   {
       i.tmp = sqrt(i.a[k]);
       i.add = i.add + i.tmp;
   }
   return i;
}

struct sum output()
{
   struct sum i;
   printf("Sum of given numbers is %f\n",i.add);
}

int main()
{
   struct sum i;
   input();
   compute();
   output();
   return 0;
}
