;;(cl:in-package :cl)

(asdf:defsystem :pcl-unit-test
  :depends-on (:doodads)
  :components (
    (:file "pcl-unit-test")
))