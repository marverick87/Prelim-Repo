x<- c(1, 2, NA, 10, 3)
is.na(x)
is.nan(x)
x<- c(1, 2, NaN, NA, 4)
is.na(x)
is.nan(x)
x<- data.frame(foo = 1:4,bar = c(T, T, F, F))
x
x<- 1:3
names(x)
names(x)<- c("foo", "bar", "norf")
x
names(x)
x<- list(a= 1, b=2, c=3)
x
m<- matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m
y<- data.frame(a = 1, b = "a")
dput(y)
structure(list(a = 1,
               b = structure(1L,.label = "a",
                             class = "factor")),
          Names = "data.frame")
dput(y, file = "y.R")
new.y <-dget("y.R")
new.y
x<-"foo"
y<- data.frame(a = 1, b = "a")
dump(c("x", "y"), file = "data.R")
rm(x,y)
source("data.R")
y
x
con <- gzfile("words.gz")
x<- readLines(con, 10)
x
#this might take time
con<- url("http://www.jhasph.edu", "r")
x<- readLines(con)
head(x)

x<-c("a","b","c","d","a")
x[1]
x[2]
x[1:4]
[1]"b" "c" "c" "d"
x[x >"a"]
u<- x >"a"
u
x[u]

x<- list(foo = 1:4, bar = 0.6)
x[1]
$foo
[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]
$bar

x<-list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(1,3)]

x<list(foo = 1:4, bar = 0.6, baz = "hello")
name<- "foo"
x[[name]]
x$name
x$foo
x<- list(a = list(10,12,14), b = c(3.14,2.81))
x[[c(1,3)]]
x[[c(2,1)]]

x<-matrix(1:6,2,3)
x[1,2]
x[2,1]
x[1, ]
x[ ,2]
x<- matrix(1:6,2,3)
x[1,2]
x[1,2, drop = FALSE]
x<- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a", exact = FALSE]]
x<- c(1,2,NA,4,NA,5)
bad<-is.na(x)
x[!bad]
x<- c(1,2,NA,4,NA,5)
y<- c("a","b",NA,"d",NA,"f")
good<- complete.cases(x,y)
good
x[good]
y[good]
airquality[1:6, ]
good<- complete.cases(airquality)
airquality[good, ][1:6, ]