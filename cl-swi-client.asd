;;;
;;; Copyright (C) 2007-2009 Keith James. All rights reserved.
;;;
;;; This file is part of cl-prolog.
;;;
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;;

(defpackage :cl-swi-client-system
  (:use :common-lisp :asdf :deoxybyte-systems))

(in-package :cl-swi-client-system)

(defsystem cl-swi-client
    :name "Common Lisp Prolog SWI-Prolog client backend"
    :depends-on (:cl-prolog :usocket)
    :components ((:module :cl-swi-client
                          :serial t
                          :pathname "src/swi-client/"
                          :components ((:file "package")
                                       (:file "classes")
                                       (:file "cl-swi-client")))))
