;;; one-time-pad-encrypt-string.el ---

;; Copyright (C) 2016 Garvin Guan
;;
;; Author: Garvin Guan <garvin.guan@gmail.com>
;; URL: https://github.com/garvinguan/emacs-one-time-pad/
;; Package-Requires: None
;; Version: 1.0
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; License:

;; Licensed under the same terms as Emacs.

;;; Commentary:

;; Bind the following commands:
;; one-time-pad-encrypt-string
;;
;; For a detailed introduction see:
;; https://github.com/garvinguan/emacs-one-time-pad/blob/master/README.md

;;; Code:

(defun one-time-pad-encrypt-string (key start end)
  "Encrypt text within a file, your key should be as long or longer than the marked text"
  (interactive
   (list (read-string "Key to use for encryption: ")
	 (region-beginning)(region-end)))
  (let* ((data (buffer-substring start end))
	(dataAsList (string-to-list data))
	(keyAsList (string-to-list key))
	(result))
    (barf-if-buffer-read-only)
    (if (< (length keyAsList) (length dataAsList))
	(error "The key must be as long or longer in length than the data"))
    (while dataAsList
      (setq result (cons (logxor (car dataAsList) (car keyAsList)) result))
      (setq dataAsList (cdr dataAsList))
      (setq keyAsList (cdr keyAsList)))
    (delete-region start end)
    (insert-string (concat (reverse result)))))
