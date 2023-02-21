# Calx -  a programming language

## examples

```
;;;; example codes of Calx

;; send a message
print "hello calx"
; hello calx
; -> nil

;; conditional branching
str = "string"
if str.length.zero? {
  print "NEVER PASSED HERE"
} else if "str".length > 5 {
  print "long string!"
} else {
  print "string is:"
  print str
}
; long string!
; -> nil

;; loop (for each, with proc object)
["one" "two" "three"].each (s) {
  print s
}
; one
; two
; three
; -> nil

;; loop (while)
count = 1
while count <= 5 {
  print count * 100
}
; 100
; 200
; 300
; 400
; 500
; -> nil

;; define a proc: arity = 1
proc add-one n {
  n + 1
}
; -> #<Proc:add-one id:xxx>
add-one 100
; -> 101

;; define proc: arity = 2
proc add i1 i2 {
  i1 + i2
}
; -> #<Proc:add id:xxx>
add 100 200
; -> 300

;; undefine proc
proc hi name {
  'hi, ' + name
}
; -> #<Proc:hi id:xxx>
hi "aaa"
; hi, aaa
; -> nil
undef hi
hi "aaa"
; -> raise #<error:method-ont-found hi>

;; define a class
;; `< ParentClass` is optional.
;; If a parent class is not specified defined class inherited Object by default.
class Stone : Object {
  method init self name {
    self.name = name
  }

  method print-name {
    print name
  }
}
; -> #<Class:Stone id:xxx>
Stone.new
; -> raise #<error:InvalidArguments>
r = Stone.new "ruby"
; -> #<Stone id:xxx>
r.print-name
; ruby
; -> nil

;; Smalltalk's "DoesNotUnderstand"-like something
class Foo {
  method method-not-found name args {
    print "method \"" + name + "\" not found!"
    print "args: " + args.->str  # この名前パーサがめんどくさそう
    name
  }
}
; -> #<Class:Foo id:xxx>
foo = Foo.new
; -> #<Foo id:xxx>
foo.method1
; method "method1" not found in class Foo!
; args: []
; -> "method1"
foo.method2 10 "second"
; method "method2" not found in class Foo!
; args: [10 "second"]
; -> "method2"
```

## Author

enshiromashiro

## License

MIT license.
