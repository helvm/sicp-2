(run '(assert! (rule (reverse () ()))))
(run '(assert! (rule (reverse (?a . ?rest) ?x)
                     (and (reverse ?rest ?reverse-rest)
                          (append-to-form ?reverse-rest (?a) ?x)))))
(run '(assert! (rule (reverse ?x (?a . ?rest))
                     (and (reverse ?reverse-rest ?rest)
                          (append-to-form ?reverse-rest (?a) ?x)))))
