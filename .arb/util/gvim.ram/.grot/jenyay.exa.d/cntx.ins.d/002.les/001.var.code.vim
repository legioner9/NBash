" int
let a = 1
" float 
let b = a + 0.1
" string
let str = "csetrty"
" list
let lst = [1 , "w" , 3]
" dict
let dct = {"a": 1 , "b": 2 , "rrr": [1 , 2 , "t"]}
let f = {"foo": 1 , "bar": 2, "qqq": [1, 2, 3]}


echo "a = " string (a) "type =" type (a)
echo "b = " string (b) "type =" type (b)
echo "str = " string (str) "type =" type (str)
echo "lst = " string (lst) "type =" type (lst)
echo "dct = " string (dct) "type =" type (dct)

unlet a b str lst dct
 
