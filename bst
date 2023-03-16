class Node {
    constructor(value){
        this.data = value;
        this.left = null;
        this.right = null;
    }
}
function createTree(arr,i) {
    if(arr.length <= i || arr[i] == null){
        return;
    }
    let node = new Node(arr[i]);

    node.left = createTree(arr , (2*i) + 1);
    node.right = createTree(arr , (2*i) + 2);

    return Node;
}
function inorder(root){
    if(root == null) return;
    inorder(root.left);
    console.log(root.data);
    inorder(root.right);
}


let root = createTree([15,12,18,11,13,17,22],0);
inorder(root);

