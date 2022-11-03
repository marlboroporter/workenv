/*
Variants of Binary Search
Difficulty Level : Easy
Last Updated : 01 Aug, 2022
Read
Discuss

Binary search is very easy right? Well, binary search can become complex when element duplication occurs in the sorted list of values. It’s not always the “contains or not” we search using Binary Search, but there are 5 variants such as below:
1) Contains (True or False) 
2) Index of first occurrence of a key 
3) Index of last occurrence of a key 
4) Index of least element greater than key 
5) Index of greatest element less than key

Each of these searches, while the base logic remains same, have a minor variation in implementation and competitive coders should be aware of them. You might have seen other approaches such as this for finding first and last occurrence, where you compare adjacent element also for checking of first/last element is reached. 

From a complexity perspective, it may look like an O(log n) algorithm, but it doesn’t work when the comparisons itself are expensive. A problem to prove this point is linked at the end of this post, feel free to try it out.
Variant 1: Contains key (True or False) 

Input : 2 3 3 5 5 5 6 6
Function : Contains(4)
Returns : False

Function : Contains(5)
Returns : True
Variant 2: First occurrence of key (index of array). This is similar to 


std::lower_bound(...)
Input : 2 3 3 5 5 5 6 6
Function : first(3)
Returns : 1

Function : first(5)
Returns : 3

Function : first(4)
Returns : -1
Variant 3: Last occurrence of key (index of array) 

Input : 2 3 3 5 5 5 6 6
Function : last(3)
Returns : 2

Function : last(5)
Returns : 5

Function : last(4)
Returns : -1
Variant 4: index(first occurrence) of least integer greater than key. This is similar to 

std::upper_bound(...)
Input : 2 3 3 5 5 5 6 6
Function : leastGreater(2)
Returns : 1

Function : leastGreater(5)
Returns : 6
Variant 5: index(last occurrence) of greatest integer lesser than key 

Input : 2 3 3 5 5 5 6 6
Function : greatestLesser(2)
Returns : -1

Function : greatestLesser(5)
Returns : 2
As you will see below, if you observe the clear difference between the implementations you will see that the same logic is used to find different variants of binary search.
*/

// C++ program to variants of Binary Search
#include <bits/stdc++.h>
 
using namespace std;
 
int n = 8; // array size
int a[] = { 2, 3, 3, 5, 5, 5, 6, 6 }; // Sorted array
 
/* Find if key is in array
 * Returns: True if key belongs to array,
 *          False if key doesn't belong to array */
bool contains(int low, int high, int key)
{
    bool ans = false;
    while (low <= high) {
        int mid = low + (high - low) / 2;
        int midVal = a[mid];
 
        if (midVal < key) {
 
            // if mid is less than key, all elements
            // in range [low, mid] are also less
            // so we now search in [mid + 1, high]
            low = mid + 1;
        }
        else if (midVal > key) {
 
            // if mid is greater than key, all elements
            // in range [mid + 1, high] are also greater
            // so we now search in [low, mid - 1]
            high = mid - 1;
        }
        else if (midVal == key) {
 
            // comparison added just for the sake
            // of clarity if mid is equal to key, we
            // have found that key exists in array
            ans = true;
            break;
        }
    }
 
    return ans;
}
 
/* Find first occurrence index of key in array
 * Returns: an index in range [0, n-1] if key belongs
 *          to array, -1 if key doesn't belong to array
 */
int first(int low, int high, int key)
{
    int ans = -1;
 
    while (low <= high) {
        int mid = low + (high - low + 1) / 2;
        int midVal = a[mid];
 
        if (midVal < key) {
 
            // if mid is less than key, all elements
            // in range [low, mid] are also less
            // so we now search in [mid + 1, high]
            low = mid + 1;
        }
        else if (midVal > key) {
 
            // if mid is greater than key, all elements
            // in range [mid + 1, high] are also greater
            // so we now search in [low, mid - 1]
            high = mid - 1;
        }
        else if (midVal == key) {
 
            // if mid is equal to key, we note down
            //  the last found index then we search
            // for more in left side of mid
            // so we now search in [low, mid - 1]
            ans = mid;
            high = mid - 1;
        }
    }
 
    return ans;
}
 
/* Find last occurrence index of key in array
 * Returns: an index in range [0, n-1] if key
             belongs to array,
 *          -1 if key doesn't belong to array
 */
int last(int low, int high, int key)
{
    int ans = -1;
 
    while (low <= high) {
        int mid = low + (high - low + 1) / 2;
        int midVal = a[mid];
 
        if (midVal < key) {
 
            // if mid is less than key, then all elements
            // in range [low, mid - 1] are also less
            // so we now search in [mid + 1, high]
            low = mid + 1;
        }
        else if (midVal > key) {
 
            // if mid is greater than key, then all
            // elements in range [mid + 1, high] are
            // also greater so we now search in
            // [low, mid - 1]
            high = mid - 1;
        }
        else if (midVal == key) {
 
            // if mid is equal to key, we note down
            // the last found index then we search
            // for more in right side of mid
            // so we now search in [mid + 1, high]
            ans = mid;
            low = mid + 1;
        }
    }
 
    return ans;
}
 
/* Find index of first occurrence of least element
   greater than key in array
 * Returns: an index in range [0, n-1] if key is not
             the greatest element in array,
 *          -1 if key is the greatest element in array */
int leastgreater(int low, int high, int key)
{
    int ans = -1;
 
    while (low <= high) {
        int mid = low + (high - low + 1) / 2;
        int midVal = a[mid];
 
        if (midVal < key) {
 
            // if mid is less than key, all elements
            // in range [low, mid - 1] are <= key
            // then we search in right side of mid
            // so we now search in [mid + 1, high]
            low = mid + 1;
        }
        else if (midVal > key) {
 
            // if mid is greater than key, all elements
            // in range [mid + 1, high] are >= key
            // we note down the last found index, then
            // we search in left side of mid
            // so we now search in [low, mid - 1]
            ans = mid;
            high = mid - 1;
        }
        else if (midVal == key) {
 
            // if mid is equal to key, all elements in
            // range [low, mid] are <= key
            // so we now search in [mid + 1, high]
            low = mid + 1;
        }
    }
 
    return ans;
}
 
/* Find index of last occurrence of greatest element
   less than key in array
 * Returns: an index in range [0, n-1] if key is not
             the least element in array,
 *          -1 if key is the least element in array */
int greatestlesser(int low, int high, int key)
{
    int ans = -1;
 
    while (low <= high) {
        int mid = low + (high - low + 1) / 2;
        int midVal = a[mid];
 
        if (midVal < key) {
 
            // if mid is less than key, all elements
            // in range [low, mid - 1] are < key
            // we note down the last found index, then
            // we search in right side of mid
            // so we now search in [mid + 1, high]
            ans = mid;
            low = mid + 1;
        }
        else if (midVal > key) {
 
            // if mid is greater than key, all elements
            // in range [mid + 1, high] are > key
            // then we search in left side of mid
            // so we now search in [low, mid - 1]
            high = mid - 1;
        }
        else if (midVal == key) {
 
            // if mid is equal to key, all elements
            // in range [mid + 1, high] are >= key
            // then we search in left side of mid
            // so we now search in [low, mid - 1]
            high = mid - 1;
        }
    }
 
    return ans;
}
 
int main()
{
    printf("Contains\n");
    for (int i = 0; i < 10; i++)
        printf("%d %d\n", i, contains(0, n - 1, i));
 
    printf("First occurrence of key\n");
    for (int i = 0; i < 10; i++)
        printf("%d %d\n", i, first(0, n - 1, i));
 
    printf("Last occurrence of key\n");
    for (int i = 0; i < 10; i++)
        printf("%d %d\n", i, last(0, n - 1, i));
 
    printf("Least integer greater than key\n");
    for (int i = 0; i < 10; i++)
        printf("%d %d\n", i, leastgreater(0, n - 1, i));
 
    printf("Greatest integer lesser than key\n");
    for (int i = 0; i < 10; i++)
        printf("%d %d\n", i, greatestlesser(0, n - 1, i));
 
    return 0;
}
/*
Output: 
Contains
0 0
1 0
2 1
3 1
4 0
5 1
6 1
7 0
8 0
9 0
First occurrence of key
0 -1
1 -1
2 0
3 1
4 -1
5 3
6 6
7 -1
8 -1
9 -1
Last occurrence of key
0 -1
1 -1
2 0
3 2
4 -1
5 5
6 7
7 -1
8 -1
9 -1
Least integer greater than key
0 0
1 0
2 1
3 3
4 3
5 6
6 -1
7 -1
8 -1
9 -1
Greatest integer lesser than key
0 -1
1 -1
2 -1
3 0
4 2
5 2
6 5
7 7
8 7
9 7
*/
