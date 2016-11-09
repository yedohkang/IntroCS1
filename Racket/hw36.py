# Yedoh Kang <kang.yedoh@gmail.com> Period 06
# HW #36

#1
'''
indexing - 1. What would be the result of indexing of -2 on the list?
slicing on the RHS - 1. What would be result of L [3:5] on the RHS?
                     2. How would the result of the previous problem                                replace the value on the LHS?
slicing on the LHS - 1. What would be the result of L [2:5] on the LHS, and                         what would the resulting result be if the RHS is                            given?
+ - 1. What would be the result of [1, 2] + ["Rob"]?
len - 1. What would be the result of len [1, 2, [3, 4], ["Bob"], "Bob"]?
index - 1. What would be result of list.index (42) in a list given of [1,               3, 42, 42, "42", 50]?
remove - 1. What would be the printed result of list.remove (42) from the               previous list? What would happen if you printed out the list?
append - 1. What would be the printed result of list.append (42) from the               previous list? What would happen if you printed out the list?
'''

#2
def barGraph (intlist):
    result = ''
    position = 0
    while position < len (intlist):
        result += str (position) + ": " + str ("=" * intlist [position]) + "\n"
        position += 1
    return result

print barGraph ([3, 4, 1, 0, 5])
# ... should be
'''
0: ===
1: ====
2: =
3: 
4: =====
'''