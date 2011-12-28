;;; doodads syntax
#|
-------------------------------------------------------------------------
This software is Copyright (c) 2008 Daniel S. Bensen.
Permission is granted to use, copy, modify, and distribute this software,
provided that this copyright and permission notice is included in full
in all copies and supporting documentation.
This software is provided "as is" with no express or implied warranty.
-------------------------------------------------------------------------
|#

(in-package :doodads)

(def make-doodads-readtable ()
  (let1 table (copy-readtable nil)
    (set-macro-character #\[      #'|read-[2-fix]|         nil table) 
    (set-macro-character #\] (get-macro-character #\) nil) nil table)
    (set-dispatch-macro-character #\# #\f #'|read-#func|       table)
    table))

(defmac use-doodads-readtable ()
  '(eval-when (:execute :compile-toplevel)
    (setf *readtable* (make-doodads-readtable))))
