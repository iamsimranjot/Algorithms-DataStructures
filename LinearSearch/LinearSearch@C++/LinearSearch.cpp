#include<iostream>

using namespace std;

template <class T>
void LinearSearch(T *arr, T num, int size)
{
  int flag = 0, index;
   for(int i=0; i<size; i++)
   {
     if (arr[i] == num){
       flag =1;
       index = i;
       break;
     }
   }

   if(flag == 0){
    cout << "The number is not present in the array.";
   }
   else {
     cout << "The number is present at position " << index+1;
   }
}


int main() {

  //int array
  int arr_size,i,num,flag=0,num_pos;
  cout<<"Enter the no. of elements in array: ";
  cin >> arr_size;

  int arr[arr_size];
  cout << "Enter the elements of the array: ";

  for(i=0;i<arr_size;i++)
      cin >> arr[i];

  cout << "Enter the no. u want to search for:";
  cin >> num;

  LinearSearch(arr, num, arr_size);
  return 0;
}
