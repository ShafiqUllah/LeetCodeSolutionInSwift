class TreeNode {
    var value: Int
    var leftNode : TreeNode?
    var rightNode: TreeNode?

    init(_ value: Int ){
        self.value = value
        leftNode = nil
        rightNode = nil
    }
}

class BinarySearchTree {
    var root: TreeNode?

    func insert(_ value: Int){
        root = insertHelper(root, value)
    }

    private func insertHelper(_ node:TreeNode? , _ value:Int) -> TreeNode{
        guard let node = node else {
            return TreeNode(value)
        }

        if value < node.value {
            node.leftNode = insertHelper(node.leftNode, value)
        }else{
            node.rightNode = insertHelper(node.rightNode, value)
        }

        return node
    }

    func search(_ value: Int)-> Bool{
        return searchHelper(root, value)
    }

    private func searchHelper(_ node: TreeNode?, _ value:Int)-> Bool{
        guard let node = node else {
            return false
        }

        if value == node.value{
            return true
        }else if value < node.value{
            return searchHelper(node.leftNode, value)
        }else{
            return searchHelper(node.rightNode, value)
        }
    }

}

let bst = BinarySearchTree()
bst.insert(10)
bst.insert(5)
bst.insert(20)
bst.insert(3)
bst.insert(7)

print(bst.search(11))
print(bst.search(20))
