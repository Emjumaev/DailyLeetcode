class Solution {
    func simplifyPath(_ path: String) -> String {
        var directories = [String]()

        var curDirectory = ""

        for char in path {
            if char == "/" {
                if curDirectory != "" {
                    directories.append(curDirectory)
                    curDirectory = ""
                }
            } else {
                curDirectory += String(char)
            }
        }

        if curDirectory != "" {
            directories.append(curDirectory)
            curDirectory = ""
        }


        var stack = [String]()

        for directory in directories {
            if directory == ".." {
                stack.popLast()
            } else if  !(directory == ".") {
                stack.append(directory)
            }
        }

        var res = "/"
        for (index, item) in stack.enumerated() {
            res += item
            if index != stack.count - 1 {
                res += "/"
            }
        }

        return res
    }
}
