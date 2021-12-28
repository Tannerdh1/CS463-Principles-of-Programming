;
(defun tdh_expr (L)
  (cond (()))
)

;
(defun tdh_term (L)

)

;
(defun tdh_factor (L)
  
)

;
(defun tdh_ident (atom)
  (cond ((null atom) T)
        ((tdh_letter (char (tdh_convertToString atom) 0)) (tdh_ident (string-trim (string (char (tdh_convertToString atom) 0)) (tdh_convertToString atom))))
	((tdh_digit (char (tdh_convertToString atom) 0)) (tdh_ident (string-trim (string (char (tdh_convertToString atom) 0)) (tdh_convertToString atom))))
	(t NIL)
  )
)

;Takes an atom and returns true if the first character is a letter and NIL if not.
(defun tdh_letter (char)
  (cond ((char-not-lessp char #\A) (cond ((char-not-greaterp char #\Z) t)))
	(t NIL))
)

;
(defun tdh_number (atom)
  (cond ((tdh_digit (char (tdh_convertToString atom) 0)) (tdh_number (string-trim (string (char (tdh_convertToString atom) 0)) (tdh_convertToString atom)))))
)  

;Takes an atom and returns true if the first charact if is a digit and NIL if not.
(defun tdh_digit (char)
  (cond ((char-not-greaterp char #\9) (cond ((char-not-lessp char #\0) t)))
	(t NIL))
)

;Takes in an atom and converts it into a string
(defun tdh_convertToString (atom)
  (string atom)
)

;
(defun tdh_parse (L)

)





