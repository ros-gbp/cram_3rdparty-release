;; Regression test FLAT for GSLL, automatically generated
;;
;; Copyright 2009 Liam M. Healy
;; Distributed under the terms of the GNU General Public License
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(in-package :gsl)

(LISP-UNIT:DEFINE-TEST FLAT
  (LISP-UNIT::ASSERT-NUMERICAL-EQUAL
   (LIST
    (LIST 1.999741748906672d0 1.1629098753910512d0
	  1.2826178052928299d0 1.9472010820172727d0
	  1.2316565427463502d0 1.4849736143369228d0
	  1.9574769565369934d0 1.7443053431343287d0
	  1.540043658344075d0 1.7399529814720154d0
	  1.7599437981843948d0))
   (MULTIPLE-VALUE-LIST
    (LET ((RNG (MAKE-RANDOM-NUMBER-GENERATOR +MT19937+ 0)))
      (LOOP FOR I FROM 0 TO 10 COLLECT
	   (sample rng :flat :a 1.0d0 :b 2.0d0)))))
  (LISP-UNIT::ASSERT-NUMERICAL-EQUAL
   (LIST 1.0d0)
   (MULTIPLE-VALUE-LIST (FLAT-PDF 1.2d0 1.0d0 2.0d0)))
  ;; Automatically converted from cdf/test_auto.c
  (ASSERT-TO-TOLERANCE (FLAT-P 0.0d0 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.d-10 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.d-9 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.d-8 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.d-7 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.d-6 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.d-5 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.d-4 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 0.001d0 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 0.01d0 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 0.1d0 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.0d0 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 10.0d0 1.3d0 750.0d0) 0.01162014157874d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-PINV 0.011620141578738545d0 1.3d0 750.0d0) 10.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 100.0d0 1.3d0 750.0d0) 0.1318285027381d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-PINV 0.13182850273808142d0 1.3d0 750.0d0) 100.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1000.0d0 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 10000.0d0 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 100000.0d0 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1000000.0d0 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.d7 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.d8 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.d9 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-P 1.d10 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.d10 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.d9 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.d8 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.d7 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1000000.0d0 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 100000.0d0 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 10000.0d0 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1000.0d0 1.3d0 750.0d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 100.0d0 1.3d0 750.0d0) 0.8681714972619d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-QINV 0.8681714972619037d0 1.3d0 750.0d0) 100.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 10.0d0 1.3d0 750.0d0) 0.9883798584213d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-QINV 0.9883798584212535d0 1.3d0 750.0d0) 10.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.0d0 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 0.1d0 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 0.01d0 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 0.001d0 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.d-4 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.d-5 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.d-6 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.d-7 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.d-8 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.d-9 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 1.d-10 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (FLAT-Q 0.0d0 1.3d0 750.0d0) 1.0d0 +TEST-TOL6+))
