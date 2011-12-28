;; asdf system def for standard-cl

(defsystem :doodads
  :components (
    (module "std"
      :serial t
      :components (
        (:file "package")
        (:file "base")
        (:module :content
           :components (
             (:file "doodads")
             (:file "2fix")
             (:file "func")))
        (:file "syntax")
        ;;(:file "asdf")
))))