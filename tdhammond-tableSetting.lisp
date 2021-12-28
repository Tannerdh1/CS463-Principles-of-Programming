;Gives the list of everyone, the first sub-list.
(defun tdh_getEveryone (L)
  (cond ((null L) 0)
	((car L))
  )
)

;Gives the list of Friends, the second sub-list.
(defun tdh_getFriends (L)
  (cond ((null L) 0)
	(t (cadr L))
  )
)

;Gives the list of Foes, the third sub-list.
(defun tdh_getFoes (L)
  (cond ((null L) 0)
	(t (caddr L))
  )
)

;Puts friends together 
(defun tdh_friendsTogether (L)
  (cond ((null L) 0)
	
  )	
)

;Put foes away from each other.
(defun tdh_foesApart (L)
  (cond ((null L) 0)
	((= (car (tdh_getEveryone L) (car (tdh_getFoes)))) ())
  )	
)

;L is a list with 3 sub-lists. The first sub-list is the people, second
;is the friends, and third is foes. All names in people are distinct and all
;names in friends and foes are also in people. This function will give a
;seating arrangement where friends are next to each other and foes aren't.
;If there is no suitable arrangement, nil is returned.
(defun tdh_tableSetting (L)
  (cond ((null L) 0)
	(t (null 0))
  )
)
