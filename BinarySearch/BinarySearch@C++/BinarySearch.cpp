#include<iostream>
using namespace std;


template <class T>
void binarySearch(T *array, int arr_size, T num)
{
    // Binary Search
    int front, last, middle, flag = 0;

    front=0;
    last = arr_size - 1; // size-1 is index of last element

    while(front <= last)
    {
        middle = (front + last)/2;
        if(num == array[middle])
        {
            flag=1;
            break;
        }
        else if(num < array[middle])
            last = middle - 1;
            else
                front = middle + 1;
    }

    if(flag == 0)
        cout << "The number is not present in the array.";
    else
        cout << "The number is present at position " << (middle+1);


}

int main()
{
    //int array
    int arr_size,i,num;
    cout<<"Enter the no. of elements in array: ";
    cin >> arr_size;

    int arr[arr_size];
    cout << "Enter the elements of the array in increasing order : ";

    for(i=0;i<arr_size;i++)
        cin >> arr[i];

    cout << "Enter the no. u want to search for:";
    cin >> num;

    binarySearch(arr, arr_size, num);

    return 0;
}
