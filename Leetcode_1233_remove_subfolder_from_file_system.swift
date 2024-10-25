class Solution {
    func removeSubfolders(_ folder: [String]) -> [String] {
        // Step 1: Sort folders lexicographically
        let sortedFolders = folder.sorted()
        var result: [String] = []
        
        for f in sortedFolders {
            // Step 2: Check if the folder should be added
            if result.isEmpty || !f.hasPrefix(result.last! + "/") {
                result.append(f)
            }
        }
        
        return result
    }
}
