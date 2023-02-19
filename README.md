# Calx -  a programming language

## examples

```
### example codes of Calx

## basics

# send message
print "hello calx"
; hello calx
; -> nil

# control flow
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

# loop (for each, with proc object)
["one" "two" "three"].each (s) {
  print s
}
; one
; two
; three
; -> nil

# loop (while)
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
```

## Author

enshiromashiro

## License

MIT license.
