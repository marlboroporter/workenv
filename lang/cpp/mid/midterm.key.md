---
header-includes:
  - \let\emphasized\emph
  - \let\strong\textbf
  - \renewcommand{\emph}[1]{\textcolor{red}{\emphasized{#1}}}
  - \renewcommand{\textbf}[1]{\textcolor{blue}{\strong{#1}}}
---



# Name:\_\_\_\_\_\_\_\_\_\_\_    RUID:\_\_\_\_\_\_\_\_\_\_\_      

$$\\[1in]$$

1. Given

    ```cpp
    class Student; 
    class Class;
    std::unordered_map<Student,std::set<Class> >  studentClass; 
    ```
There are S students and an average of C classes per student.

* What is the big-O of printing all students alphabetically and for each student, listing each of their classes alphabetically? Explain your answer.
    * Answer
        * ChatGpt
            1. The big-O of printing all students alphabetically and for each student, listing each of their classes alphabetically is O(S log S + S*C log C). This is because we need to iterate over all S students and for each student, we need to print their name and iterate over their C classes and print them alphabetically. Sorting the list of students alphabetically takes O(S log S) time, and sorting the list of classes for each student takes O(C log C) time. Therefore, the overall time complexity is O(S log S + S*C log C).
        * SOE 
            * C++ unsorted_map is a hash table, and set sorted tree 
            * O(S*log(S) + S*C)  



* What is the big-O of determining who's taking ECE512? Explain your answer.
    * Answer
        * ChatGpt
            2. The big-O of determining who's taking ECE512 is O(S + C log C). This is because we need to iterate over all S students and check whether they are taking the class ECE512. For each student, we need to look up their set of classes in the unordered_map, which takes O(1) time on average, and check whether ECE512 is in the set. Checking whether ECE512 is in the set takes O(log C) time because the set is sorted alphabetically. Therefore, the overall time complexity is O(S + C log C).
        * SOE
            * C++ unsorted_map is a hash table, and set sorted tree 
            * O(S*Log(C))

* What is the big-O of determining if Joe Smith is taking ECE512? Explain your answer.
    * Answer
        * ChatGpt
            3. The big-O of determining if Joe Smith is taking ECE512 is O(log C), where C is the average number of classes per student. This is because we need to look up Joe Smith's set of classes in the unordered_map, which takes O(1) time on average, and check whether ECE512 is in the set. Checking whether ECE512 is in the set takes O(log C) time because the set is sorted alphabetically. Therefore, the overall time complexity is O(log C).

        * SOE
            * O(log(C))


2. Given a randomly ordered array of N integers, what is the big-O of the most efficient algorithm for determining if any single number in the array makes up more than 50% of the array? Explain your answer.

    * Answer

        * [enjoyalgorithms.com](https://www.enjoyalgorithms.com/blog/find-the-majority-element-in-an-array)
            *

        * chatGtp

           The most efficient algorithm for determining if any single number in the array makes up more than 50% of the array has a time complexity of O(N) in the worst case scenario.

            One way to solve this problem is to use a modified version of the Boyer-Moore majority vote algorithm. This algorithm keeps track of a candidate majority element and a count of occurrences of that element. It iterates through the array, and for each element, it either increments the count if the element matches the candidate or decrements the count otherwise. If the count ever reaches zero, it sets the current element as the new candidate. At the end of the iteration, the algorithm checks if the candidate element appears more than N/2 times in the array.

            The time complexity of this algorithm is O(N) because it only iterates through the array once. Each iteration performs a constant number of operations (updating the candidate and count), so the total number of operations is proportional to the size of the array, i.e., O(N).

            In the worst case scenario, the majority element does not exist, and the algorithm will still have to iterate through the entire array. In this case, the time complexity is O(N). However, in the best case scenario, the majority element is the first element in the array, and the algorithm will only have to iterate through the array once, resulting in a time complexity of O(1).

            Therefore, the most efficient algorithm for determining if any single number in the array makes up more than 50% of the array has a time complexity of O(N) in the worst case scenario. 

        * SOE
            * O(n) 
         

3. Given a binary search tree, what is the algorithm to print it out in reverse order? What is the big-O of this algorithm? Explain your answer. What is the big-O of the algorithm if the tree is not bushy (e.g. if the values were inserted into the tree in alphabetical order) Explain your answer.

* Answer
    * ChatGpt  

        To print a binary search tree in reverse order, we can use a recursive algorithm that first traverses the right subtree, then the root, and finally the left subtree. Here is the pseudocode for the algorithm:

        scss
        Copy code
        printBSTReverse(node):
            if node is null:
                return
            printBSTReverse(node.right)
            print(node.value)
            printBSTReverse(node.left)

        This algorithm first recursively traverses the right subtree, printing out the values in descending order. It then prints out the value of the current node, which will be the largest value in the subtree. Finally, it recursively traverses the left subtree, printing out the values in descending order.

        The time complexity of this algorithm is O(N), where N is the number of nodes in the tree. This is because the algorithm visits each node exactly once, performing a constant amount of work (printing out the value) at each node. Therefore, the time complexity is proportional to the number of nodes in the tree.

        If the binary search tree is not bushy, and the values were inserted into the tree in alphabetical order (or any other sorted order), then the tree will be essentially a linked list. In this case, the same algorithm as above can be used to print out the tree in reverse order. However, the time complexity will be O(N^2), where N is the number of nodes in the tree.

        This is because the algorithm will still visit each node exactly once, but each node will have to recursively traverse its right subtree, which will take O(N) time in the worst case. Therefore, the total time complexity will be the sum of all the recursive calls, which will be O(N^2) in the worst case.

        In summary, the algorithm to print out a binary search tree in reverse order has a time complexity of O(N) for a bushy tree and O(N^2) for a non-bushy tree.

    * SOE
        * ChatGpt's analysis for bushy case complexity is not convincing. It should always be O(N). 





4. If you were to perform a pre-order traversal of this binary tree and insert each node, in the order it is processed, into a closed hash table of size 7, show the resulting hash table. Explain your answer.

```graphviz
 digraph g {
 node [shape = record,height=.1];
 node1[label = "<f0>|<f1>10|<f2>"];
 node2[label = "<f0>|<f1>7|<f2>"];
 node3[label = "<f0>|<f1>12|<f2>"];
 node4[label = "<f0>|<f1>3|<f2>"];
 node5[label = "<f0>|<f1>11|<f2>"];
 node6[label = "<f0>|<f1>100|<f2>"];
 node7[label = "<f0>|<f1>3|<f2>"];

 "node1":f0 -> "node2":f1;
 "node1":f2 -> "node3":f1;
 "node2":f0 -> "node4":f1;
 "node4":f0 -> "node7":f1;
 "node3":f0 -> "node5":f1;
 "node3":f2 -> "node6":f1;

 }
 ```

* Answer
    * ChatGpt (asked without graph)

To perform a pre-order traversal of a binary tree, we first visit the root node, then recursively traverse the left subtree, and finally recursively traverse the right subtree. To insert each node into a closed hash table of size 7, we can use the hash function `h(key) = key % 7`, where `key` is the value of the node. If a collision occurs, we can use linear probing to find the next available slot in the hash table.

Let's consider the following binary tree:

```
      5
     / \
    3   8
   / \   \
  2   4   9
```

Performing a pre-order traversal of this tree will visit the nodes in the order `5, 3, 2, 4, 8, 9`. Inserting each node into a closed hash table of size 7 using the hash function `h(key) = key % 7` and linear probing will result in the following hash table:

```
+---+---+---+---+---+---+---+
| 5 | 3 | 2 | 4 | 8 | 9 |   |
+---+---+---+---+---+---+---+
```

Here, the value `5` is inserted into the first slot of the hash table, since `h(5) = 5 % 7 = 5`. The value `3` is then inserted into the second slot, since `h(3) = 3 % 7 = 3`, and the first slot is already occupied. The value `2` is inserted into the third slot, since `h(2) = 2 % 7 = 2`, and the second slot is already occupied. The value `4` is inserted into the fourth slot, since `h(4) = 4 % 7 = 4`, and the third slot is already occupied. The value `8` is inserted into the fifth slot, since `h(8) = 8 % 7 = 1`, and the fourth slot is already occupied. The value `9` is inserted into the sixth slot, since `h(9) = 9 % 7 = 2`, and the fifth slot is already occupied. Finally, the last slot of the hash table is empty, since there are no more nodes to insert.

In summary, performing a pre-order traversal of the given binary tree and inserting each node, in the order it is processed, into a closed hash table of size 7 using the hash function `h(key) = key % 7` and linear probing will result in the hash table shown above.

5. What is the big-O of the following algorithm? Explain your answer.
```cpp

void func(int arr[], int n){
    set<int> s;
    for (int i=0;i<n;i++){
       for (int j=0;j<i;j++)
            s.insert(arr[i] * arr[j]);
    }
}

```
* Answer
    * ChatGpt

The time complexity of the given algorithm is O(n^2 * log m), where n is the size of the input array and m is the maximum possible value of arr[i]*arr[j].

The outer loop iterates n times, and for each iteration of the outer loop, the inner loop iterates i times. Inside the inner loop, a multiplication of two array elements is performed, and the result is inserted into a set data structure. The set's insert operation has a time complexity of O(log m), where m is the maximum possible value that can be inserted into the set.

Thus, the total time complexity of the algorithm is the product of the number of iterations in both loops multiplied by the time complexity of the set's insert operation. Therefore, the overall time complexity of the algorithm is O(n^2 * log m).

In summary, the given algorithm has a time complexity of O(n^2 * log m), where n is the size of the input array and m is the maximum possible value of arr[i]*arr[j].

$$\\[3in]$$

6. Given the following unsorted array of integers, show it after it has been heapified using the efficient heap-sort algorithm that performs heapification in-place. Explain your answer.

|1|2|3|4|5|6|7|8|9|10
|---|---|---|---|---|---|---|---|---|---|
|1|9|100|3|77|5|29|30|88|33|
|||||||||||

* Answer
    * ChatGpt (Asked incude table header)

To heapify the given unsorted array using the efficient heap-sort algorithm, we need to convert the array into a max-heap data structure. The max-heap is a binary tree in which each node is greater than or equal to its children. The heapification process can be performed in-place, without requiring additional memory.

The heap-sort algorithm first builds a max-heap from the array and then repeatedly extracts the maximum element from the heap and places it at the end of the array. After each extraction, the heap is restructured to maintain the heap property.

To build a max-heap from the given array, we can start from the middle of the array and work our way back to the beginning. We repeatedly swap the parent node with its largest child node until the subtree rooted at the parent satisfies the max-heap property. This process is repeated for each parent node in reverse order, starting from the last non-leaf node up to the root.

After performing this operation, the array will be heapified and will look as follows:

|100|88|29|30|77|5|9|3|1|33|

Here, the array is heapified and represented as a max-heap. The root of the max-heap is the largest element in the array, and each node is greater than or equal to its children.

In summary, the given unsorted array has been heapified using the efficient heap-sort algorithm that performs heapification in-place. The resulting heapified array is [100, 88, 29, 30, 77, 5, 9, 3, 1, 33].


7. You need to sort an array of integers which is already almost entirely sorted.  Should you use the insertion sort, the merge sort, or the heapsort? Explain your answer.

* ChatGpt

If the array of integers is already almost entirely sorted, the most efficient sorting algorithm to use is the insertion sort.

Insertion sort is well suited for sorting nearly sorted or small-sized arrays. In an almost sorted array, each element is at most a few positions away from its sorted position. Insertion sort takes advantage of this property by swapping adjacent elements if they are in the wrong order. This approach results in fewer comparisons and swaps compared to other sorting algorithms like merge sort and heapsort.

Merge sort and heapsort, on the other hand, have worst-case time complexity of O(nlogn) regardless of the initial order of the array. Therefore, using merge sort or heapsort on an almost sorted array would be inefficient since they would perform unnecessary comparisons and swaps, resulting in slower performance.

In summary, insertion sort is the most efficient sorting algorithm to use for an almost sorted array since it takes advantage of the property of the almost sorted array and performs fewer comparisons and swaps compared to merge sort and heapsort.


8. You need to build a table to quickly look up student records by the students' last names; the set of students will grow and shrink each year as new students are enrolled and others graduate. Should you use a sorted array, a closed hash table, or a binary search tree? Explain your answer.

* ChatGpt
---
For a table to quickly look up student records by last name, a closed hash table is the best option.

A closed hash table is a data structure that uses an array to store key-value pairs, where the keys are hashed to an index in the array. A hash function is used to generate the index of each key, and collisions (where two keys hash to the same index) are resolved by storing the key-value pairs in a linked list at the corresponding array index.

Using a closed hash table for this problem has several advantages. First, it has a constant-time lookup complexity (O(1)), meaning that the time to retrieve a student record is independent of the size of the set of students. Second, it has a relatively simple implementation and requires minimal memory overhead.

On the other hand, a sorted array and a binary search tree have logarithmic time complexity for lookup operations. While a sorted array can be used to perform binary search to quickly locate a student record, its complexity is still O(log n), which is slower than the O(1) complexity of a closed hash table. A binary search tree has similar lookup complexity to a sorted array but requires more memory overhead and has a more complex implementation.

In summary, for a table to quickly look up student records by last name, a closed hash table is the best option due to its constant-time lookup complexity and ease of implementation.



9. Write a function called swapFirstTwo which swaps the first two items in a linked list (if there are at least two items). 

```cpp
struct NODE{
	int val;
	NODE *next;
};
```

```cpp
struct NODE{
	int val;
	NODE *next;
};
```

* ChatGpt
    
Here's an implementation of the `swapFirstTwo` function in C++:

```cpp
void swapFirstTwo(NODE *&head){
    if (head == nullptr || head->next == nullptr) {
        // No swapping required
        return;
    }
    
    NODE *temp = head->next;
    head->next = temp->next;
    temp->next = head;
    head = temp;
}
```

This function takes a pointer to the head of the linked list as input and swaps the first two nodes in the list if there are at least two nodes. 

The function first checks if the linked list has at least two nodes, and if not, it returns without doing anything. If the linked list has at least two nodes, it creates a temporary pointer `temp` and sets it to the second node in the list. It then updates the `next` pointers of the nodes to swap their positions, and finally updates the head of the list to point to the new first node (`temp`).

Note that the function uses a reference to a pointer (`NODE *&head`) to modify the head of the list. This is necessary to update the head of the list when the first two nodes are swapped. If a regular pointer to the head was used instead, the head of the list would not be updated correctly.    





10. What does this program print? Explain your answer.

```cpp
class MagicPower{
public: 
    MagicPower() { cout << “MP\n”; }
    ~ MagicPower() { cout << “~MP\n”; }
};

class Wand{
public:
    Wand() { cout << “Wand\n”; }
    ~Wand() { cout << “~Wand\n”; }    
private:
    MagicPower myPower;
};

class Wizard{
public:
     Wizard()  { cout << “Wizard\n”; }
     ~Wizard()  { cout << “~Wizard\n”; }
private:
     Wand myWand;
     Wand *secondWand;
};

int main(){
     Wizard *tom;
     tom = new Wizard;
    Wizard david[2];
}
```

$$\\[2in]$$

11. Show the copy constructor for the stomach class. 

```cpp

class Stomach{
public:
     Stomach(string items[], int n){
            count = n;

            if (n <= 3){  // if <= 3 items then use array
              for (int i=0;i<n;i++)
                    contents[i] = items[i];
            }else{          // otherwise use new to alloc array
                   moreThanThree = new string[n];
                   for (int i=0;i<n;i++)
                         moreThanThree[i] = items[i];
            }    
      }

     ~Stomach(){
           if (count > 3)
                delete [] moreThanThree;
     }

private:
   string contents[3];
   string *moreThanThree;             
   int count;
}; 

```

* Answer
    * ChatGpt


To define the copy constructor for the `Stomach` class, we need to make a deep copy of the object being copied. Here's an implementation:

```cpp
class Stomach {
public:
    Stomach(string items[], int n) {
        count = n;
        if (n <= 3) {
            for (int i = 0; i < n; i++)
                contents[i] = items[i];
        } else {
            moreThanThree = new string[n];
            for (int i = 0; i < n; i++)
                moreThanThree[i] = items[i];
        }
    }

    // Copy constructor
    Stomach(const Stomach& other) {
        count = other.count;
        if (count <= 3) {
            for (int i = 0; i < count; i++)
                contents[i] = other.contents[i];
        } else {
            moreThanThree = new string[count];
            for (int i = 0; i < count; i++)
                moreThanThree[i] = other.moreThanThree[i];
        }
    }

    ~Stomach() {
        if (count > 3)
            delete[] moreThanThree;
    }

private:
    int count;
    string contents[3];
    string* moreThanThree = nullptr;
};
```

The copy constructor takes a reference to another `Stomach` object and copies its contents into the newly created object. If the `count` member is less than or equal to 3, it simply copies the contents array using a loop. Otherwise, it allocates a new string array of size `count` and copies the elements of the `moreThanThree` array using a loop. It also sets the `count` member of the new object to the `count` member of the original object.

Note that we also need to define a destructor that deletes the `moreThanThree` array if it was allocated in the constructor or the copy constructor.



12. Define a constructor for the NightClub class so it works as specified below:

Sam's joke should be: 
“A man walks into a bar…ouch!” and he should tell it count times.

David's joke should be:
“A fish swims into a wall…Damn!” and he should tell it twice as many times as Sam.

```cpp
class BadComedian{
public:
    BadComedian(const string &joke, int times){
          myJoke = joke;
          numTimes = times;
    }
    void tellJoke() const {
          for (int i=0;i<numTimes;i++)
              cout << myJoke << endl;
    }
private:
    string myJoke;
    int numTimes;
};

class NightClub{
public:
    NightClub(int count) { }

    void doShow() {
           sam.tellJoke();
           david.tellJoke();
    }
private:
   BadComedian sam;
   BadComedian david;
};

```

Here's a possible implementation of the constructor for the `NightClub` class:

```cpp
class NightClub {
public:
    NightClub(int count) : sam("A man walks into a bar…ouch!", count), david("A fish swims into a wall…Damn!", count * 2) {}
    
    void doShow() {
        sam.tellJoke();
        david.tellJoke();
    }
    
private:
    BadComedian sam;
    BadComedian david;
};
```

This constructor initializes `sam` with the joke `"A man walks into a bar…ouch!"` and the given `count` times. It initializes `david` with the joke `"A fish swims into a wall…Damn!"` and twice the `count` times. When the `doShow()` method is called, both comedians tell their jokes the specified number of times.


13. Write a recursive function called freeList that accepts a pointer to a doubly linked list node. The function must print all of the items in order and also delete all nodes except for the first in the linked list.

```cpp
struct NODE{
	int val;
	NODE *next, *prev;
};

void main(){
   NODE *head; 	// ptr points to the first node (e.g. head) of the linked list
   head = createSomeLinkedList();
   freeList(head);
}
```


* Answer
    * ChatGpt

Here's the implementation of the `freeList` function as per the requirements:

```cpp
void freeList(NODE* node) {
    if (node == NULL) {
        return;
    }
    // Print the current node value
    cout << node->val << " ";
    // Recursively traverse to the next node
    freeList(node->next);
    // Delete the current node except the first one
    if (node->prev != NULL) {
        delete node;
    }
}
```

Note that the function takes a pointer to a doubly linked list node, and recursively traverses the list to print all the values in order. When deleting the nodes, it only deletes all nodes except the first one, i.e., the node with a `NULL` `prev` pointer.


14. Create a set of C++ classes using inheritance:

All Sea Animals can make noise using a makeNoise function that takes no arguments and returns nothing

* You must specify a Sea Animal's weight when its born
* You can get a Sea Animal’s weight by calling its weight() function which returns its weight.
* All Sea Animals can eat(…) another Sea Animal (passed in by pointer) and gain the weight of the consumed animal (the eaten animal should be deleted)
* Otters have a makeNoise method that prints “Bark”.
* Squid have a makeNoise method that prints “Squeak”.
* Giant Squid, a species of Squid, burps after it eats another animal by printing “Burp” to the screen.
* Giant Squid always weight 1000 pounds.

* Answer
    * ChatGpt

Here is an example implementation of the classes using inheritance:

```cpp
class SeaAnimal{
public:
    SeaAnimal(float w) : weight(w) {}
    virtual ~SeaAnimal() {}
    virtual void eat(SeaAnimal* prey){
        weight += prey->getWeight();
        delete prey;
    }
    float getWeight() const { return weight; }
private:
    float weight;
};

class Otter : public SeaAnimal{
public:
    Otter(float w) : SeaAnimal(w) {}
    void makeNoise() { cout << "Bark" << endl; }
};

class Squid : public SeaAnimal{
public:
    Squid(float w) : SeaAnimal(w) {}
    void makeNoise() { cout << "Squeak" << endl; }
};

class GiantSquid : public Squid{
public:
    GiantSquid() : Squid(1000.0) {}
    void eat(SeaAnimal* prey){
        Squid::eat(prey);
        cout << "Burp" << endl;
    }
};
```

This set of classes defines a hierarchy of SeaAnimals, with Otters and Squids as two species of SeaAnimal, and GiantSquid as a subclass of Squid. The SeaAnimal class provides a virtual `eat()` method that allows any SeaAnimal to consume another SeaAnimal, and gain its weight. Otters and Squids each have a `makeNoise()` method that prints a different sound to the screen. GiantSquids have a `eat()` method that overrides the method inherited from Squid, and adds a special behavior of printing "Burp" to the screen after eating another animal. Additionally, GiantSquids always weigh 1000 pounds, so their constructor initializes their weight to that value.

$$\\[6in]$$

15. Write a recursive function called addOnes that finds all nodes containing a value of 0 in a linked list and adds a new node after each with a value of 1.

* Answer
    * ChatGpt

    Here's a possible implementation of the `addOnes` function that recursively traverses a linked list and adds a new node with a value of 1 after each node with a value of 0:

```cpp
struct Node {
    int value;
    Node *next;
};

void addOnes(Node *node) {
    if (node == nullptr) {
        return;  // base case: empty list
    }
    if (node->value == 0) {
        Node *newNode = new Node{1, node->next};  // create new node with value 1
        node->next = newNode;  // insert new node after current node
        addOnes(newNode->next);  // recursively process remaining nodes
    } else {
        addOnes(node->next);  // recursively process remaining nodes
    }
}
```

Here's an example usage of the `addOnes` function with a linked list containing the values `{0, 2, 0, 4, 0, 6}`:

```cpp
Node *head = new Node{0, new Node{2, new Node{0, new Node{4, new Node{0, new Node{6, nullptr}}}}}};
addOnes(head);
// linked list now contains the values {0, 1, 2, 0, 1, 4, 0, 1, 6}
``` 

The resulting linked list has a new node with a value of 1 added after each node with a value of 0.


$$\\[2in]$$

16. Write a function called Balanced that determines whether or not a parenthesized expression is properly balanced.  Your function should process strings with the following types of delimiters: ( ) { } [ and ].  Your function should accept two arguments: a string argument and a reference to an integer.  The first, string argument contains the input expression that should be evaluated.  The second, integer reference should have its value set to the maximum “nesting” depth of the expression. The function should return a bool: true if the expression is properly parenthesized, and false otherwise.
 
Here are examples of valid, balanced strings:

	bletch					MaxDepth = 0
	{}				    	MaxDepth = 1
	[( )( )]		    	MaxDepth = 2
	{goober[{face}]} 		MaxDepth = 3
	(a(b((c)))d)[(ef{g})]	MaxDepth = 4

Here are examples of invalid strings:
 
	Snitch[
	[fe[fi[fo}fum]ack)
	((start()())

* Answer
    * ChatGpt

There are different ways to approach this problem, but one possible solution is to use a stack data structure to keep track of opening brackets and pop them off the stack when a closing bracket is encountered. If the closing bracket does not match the top of the stack, or if the stack is empty before encountering a closing bracket, then the string is invalid.

Here's an implementation in C++:

```cpp
#include <stack>
#include <string>

bool isValid(const std::string& str) {
    std::stack<char> s;

    for (char c : str) {
        if (c == '(' || c == '[' || c == '{') {
            s.push(c);
        } else if (c == ')') {
            if (s.empty() || s.top() != '(') {
                return false;
            }
            s.pop();
        } else if (c == ']') {
            if (s.empty() || s.top() != '[') {
                return false;
            }
            s.pop();
        } else if (c == '}') {
            if (s.empty() || s.top() != '{') {
                return false;
            }
            s.pop();
        }
    }

    return s.empty();
}
```

You can use this function to check the validity of the given strings:

```cpp
bool valid1 = isValid("Snitch[");       // false
bool valid2 = isValid("[fe[fi[fo}fum]ack)");  // false
bool valid3 = isValid("((start()())");  // false
``` 

In this case, all three strings are invalid and the corresponding bool variables will be false.

* second query of ChatGpt

Here's a possible implementation of the `Balanced` function:

```cpp
bool Balanced(const string& expr, int& maxDepth) {
    stack<char> stk;
    maxDepth = 0;
    int depth = 0;
    for (char c : expr) {
        switch (c) {
            case '(':
            case '{':
            case '[':
                stk.push(c);
                depth++;
                if (depth > maxDepth) maxDepth = depth;
                break;
            case ')':
                if (stk.empty() || stk.top() != '(') return false;
                stk.pop();
                depth--;
                break;
            case '}':
                if (stk.empty() || stk.top() != '{') return false;
                stk.pop();
                depth--;
                break;
            case ']':
                if (stk.empty() || stk.top() != '[') return false;
                stk.pop();
                depth--;
                break;
            default:
                break;
        }
    }
    return stk.empty();
}
```

The function uses a stack to keep track of the opening delimiters encountered so far. When a closing delimiter is encountered, it is checked against the top of the stack to see if it matches the corresponding opening delimiter. If it does, the top of the stack is popped; otherwise, the function returns false, indicating that the expression is not properly balanced.

The function also keeps track of the maximum nesting depth of the expression by incrementing a `depth` counter each time an opening delimiter is encountered and decrementing it each time a closing delimiter is encountered. If the `depth` value ever exceeds the current `maxDepth` value, the latter is updated to reflect the new maximum. Finally, the function returns true if the stack is empty, indicating that all opening delimiters have been matched with closing delimiters.


17. A “binary tree” is a data structure that employs a special type of linked list node.  In a binary tree, each linked list node has two next pointers.  Here is an example binary tree node:

```cpp
struct binodes
{
    int  datavalue;
    btnode *left;
    btnode *right;
};
```
Write a member function called findValue that accepts a pointer to the head of the tree and an int parameter and returns an int. The function must search through each node of the binary tree and count the number of times the value was found in the tree, then return this value. 

* First implement your function using a queue.
* Then implement it with recursion. 


```graphviz
 digraph g {
 node [shape = record,height=.1];
 nodeH[label = "<f0> Head"];
 node0[label = "<f0> |<f1> 1|<f2> "];
 node1[label = "<f0> |<f1> 7|<f2> "];
 node2[label = "<f0> |<f1> 2|<f2> "];
 node3[label = "<f0>nullptr |<f1> 10|<f2> nullptr "];
 node4[label = "<f0> |<f1> 20|<f2> "];
 node5[label = "<f0>nullptr |<f1> 20|<f2>nullptr "];
 node6[label = "<f0>nullptr |<f1> 50|<f2>nullptr "];
 node7[label = "<f0>nullptr |<f1> 77|<f2> nullptr "];
 node8[label = "<f0>nullptr |<f1> 2|<f2>nullptr "];
 "nodeH":f1 -> "node0":f1;
 "node0":f2 -> "node4":f1;
 "node0":f0 -> "node1":f1;
 "node1":f0 -> "node2":f1;
 "node1":f2 -> "node3":f1;
 "node2":f2 -> "node8":f1;
 "node2":f0 -> "node7":f1;
 "node4":f2 -> "node6":f1;
 "node4":f0 -> "node5":f1;
 }
 ```

* Answer
    * ChatGpt

Here's the implementation of the member function `findValue` for the `btnode` class:

```cpp
class btnode {
public:
    int datavalue;
    btnode *left;
    btnode *right;

    // Constructor
    btnode(int value) {
        datavalue = value;
        left = right = nullptr;
    }

    // Function to find the number of times a value occurs in the tree using a queue
    int findValueWithQueue(int value) {
        int count = 0;
        queue<btnode*> q;
        q.push(this);
        while (!q.empty()) {
            btnode* current = q.front();
            q.pop();
            if (current->datavalue == value)
                count++;
            if (current->left != nullptr)
                q.push(current->left);
            if (current->right != nullptr)
                q.push(current->right);
        }
        return count;
    }

    // Function to find the number of times a value occurs in the tree using recursion
    int findValueWithRecursion(int value) {
        int count = 0;
        if (this->datavalue == value)
            count++;
        if (this->left != nullptr)
            count += this->left->findValueWithRecursion(value);
        if (this->right != nullptr)
            count += this->right->findValueWithRecursion(value);
        return count;
    }
};
```

Here's how to use the `findValue` function with the binary tree shown in the diagram:

```cpp
int main() {
    btnode* head = new btnode(1);
    head->left = new btnode(7);
    head->right = new btnode(2);
    head->left->left = new btnode(20);
    head->left->right = new btnode(10);
    head->right->left = new btnode(50);
    head->right->right = new btnode(20);
    head->left->right->left = new btnode(77);
    head->left->right->right = new btnode(2);

    // Using findValueWithQueue
    int count1 = head->findValueWithQueue(20); // returns 2
    int count2 = head->findValueWithQueue(5); // returns 0

    // Using findValueWithRecursion
    int count3 = head->findValueWithRecursion(2); // returns 2
    int count4 = head->findValueWithRecursion(7); // returns 1

    return 0;
}
```    