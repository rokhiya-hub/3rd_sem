#include "BinarySearchTree.h"

int main() {
    BinarySearchTree bst;

    // Insert values into the BST
    bst.Insert(50);
    bst.Insert(30);
    bst.Insert(70);
    bst.Insert(20);
    bst.Insert(40);
    bst.Insert(60);
    bst.Insert(80);

    cout << "Inorder Traversal: ";
    bst.Inorder();  // Output should be: 20 30 40 50 60 70 80
    cout << endl;

    // Search for existing and non-existing values
    cout << "Exists 40? " << (bst.Exists(40) ? "Yes" : "No") << endl;
    cout << "Exists 100? " << (bst.Exists(100) ? "Yes" : "No") << endl;

    // Delete a node
    bst.Remove(40);
    cout << "Inorder after deleting 40: ";
    bst.Inorder();  // Output should not include 40
    cout << endl;

    // Delete the root
    bst.Remove(50);
    cout << "Inorder after deleting root (50): ";
    bst.Inorder();  // Output should not include 50
    cout << endl;

    // Destructor will be automatically called here and free all memory
    return 0;
}
