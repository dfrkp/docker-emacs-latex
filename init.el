;;; init.el --- ensure basic emacs features are available and set base parameter
;;; Commentary:

;;; Code:
(with-eval-after-load 'ox-latex
    (add-to-list 'org-latex-classes
                 '("scrreprt"
                   "\\documentclass{scrreprt}
                    \\usepackage[utf8]{inputenc}
                    [PACKAGES]
                    [EXTRA]"
		   ("\\chapter{%s}" . "\\chapter*{%s}")
                   ("\\section{%s}" . "\\section*{%s}")
                   ("\\subsection{%s}" . "\\subsection*{%s}")
                   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                   ("\\paragraph{%s}" . "\\paragraph*{%s}")
                   ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))
