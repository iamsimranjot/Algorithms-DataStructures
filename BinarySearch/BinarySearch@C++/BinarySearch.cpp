#include<iostream>
using namespace std;

int binarySearch(int size, int array[], int num) {

    // Binary Search
    int front, last, middle, flag = 0;

    front=0;
    last = size - 1; // size-1 is index of last element

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
        return -1;
    else
        return (middle+1);

}
int main()
{
    int size,i,num,flag=0,num_pos;
    cout<<"Enter the no. of elements in array: ";
    cin >> size;

    int arr[size];
    cout << "Enter the elements of the array in inc. order : ";

    for(i=0;i<size;i++)
        cin >> arr[i];

    cout << "Enter the no. u want to search for:";
    cin >> num;

    num_pos = binarySearch(size, arr, num);

    if(num_pos == -1)
        cout << "The number is not present in the array.";
    else
        cout << "The number is present at position " << num_pos;

    return 0;
}
