#include <iostream>
using namespace std;

struct	BstNode{
	int data;
	BstNode* left;
	BstNode* right;
};

//BstNode* rootPtr;  	//to store address of root node
BstNode* GetNewNode(int data){
	BstNode* newNode = new BstNode();
	newNode->data = data;
	newNode->left = newNode->right = NULL;
	return newNode;
}

BstNode* Insert(BstNode* root,int data){
	//empty tree
	if(root==NULL){
		root = GetNewNode(data);
		return root;
	}
	else if(data <= root->data){
		root->left = Insert(root->left,data);
	}
	else{
		root->right = Insert(root->right,data);
	}
	return root;
}

bool Search(BstNode* root,int data){
	if(root==NULL) return false;
	else if(root->data == data) return true;
	else if(data < root->data) return Search(root->left,data);
	else {return Search(root->right,data);}
}
int main(){
	BstNode* root;	//pointer to root mode
	root = NULL;	//setting tree as empty
	root = Insert(root,15);
	root = Insert(root,10);
	root = Insert(root,20);
	root = Insert(root,25);
	root = Insert(root,8);
	root = Insert(root,12);

	int number;
	cout << "enter number be searched\n";
	cin >> number;
	if(Search(root,number) == true) cout << "Found\n";
	else cout << "Not Found\n";

}

int FindMin(BstNode* root){
	if(root==NULL){
		cout << "Error: Tree is empty\n";
		return -1;
	}
	while(root->left != NULL){
		root = root->left;
	}
	return root->data;
	/*
	//search in left subtree
	
	else if(root->left == NULL){
		return root->data;
	}

	return FindMin(root->left);
	*/

}
/*for c
int FindHeight(struct Node *root){
	if(root == NULL)
		return -1;
	return max(FindHeight(root->left),FindHeight(root->right)) + 1;
}
