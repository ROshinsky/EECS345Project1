(load "simpleParser.scm")
;Function Interpret, I will write this then try to fill in any functions used in interpret

(define interpret
  (lambda (filename)
    (evaluate (parser filename))))  ;write evaluate function that takes parse tree and outputs value

;evaluate goes through parse tree and works out value
(define evaluate
  (lambda (tree)))


;variable declaration
;(var variable) or (var variable value)

;assignment
; (= variable expression)


;return
;(return expression)


;if statement
;(if conditional then-statement optional else statement)


;while statement
;(while conditional body-statement)
    