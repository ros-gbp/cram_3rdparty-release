;; Regression test CHI-SQUARED for GSLL, automatically generated
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

(LISP-UNIT:DEFINE-TEST CHI-SQUARED
  (LISP-UNIT::ASSERT-NUMERICAL-EQUAL
   (LIST
    (LIST 13.043328884186328d0 11.427227829236712d0
	  16.55811815484942d0 7.128795406995407d0
	  5.120266499239882d0 10.464572605669142d0
	  5.8126929867006405d0 8.784940866479005d0
	  7.559275305609187d0 8.35181083950897d0
	  4.140798004825149d0))
   (MULTIPLE-VALUE-LIST
    (LET ((RNG (MAKE-RANDOM-NUMBER-GENERATOR +MT19937+ 0)))
      (LOOP FOR I FROM 0 TO 10 COLLECT
	   (sample rng :chi-squared :nu 10.0d0)))))
  (LISP-UNIT::ASSERT-NUMERICAL-EQUAL
   (LIST 0.43939128946772227d0)
   (MULTIPLE-VALUE-LIST (CHI-SQUARED-PDF 0.5d0 1.0d0)))
  ;; Automatically converted from cdf/test.c
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 0.0d0 13.0d0) 0.0d0 +DBL-EPSILON+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d-100 13.0d0) 0.0d0 +DBL-EPSILON+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 0.001d0 13.0d0) 1.86631102655846d-25 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 0.01d0 13.0d0) 5.878822485045298d-19 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 0.1d0 13.0d0) 1.7879698335855542d-12 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 0.325d0 13.0d0) 3.446113137799052d-9 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.0d0 13.0d0) 3.8347347351359515d-6 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.5d0 13.0d0) 4.317183892010419d-5 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 2.0d0 13.0d0) 2.2625008465604717d-4 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 10.0d0 13.0d0) 0.30606563201925113d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 20.0d0 13.0d0) 0.9047897439219085d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 100.0d0 13.0d0) 0.9999999999999983d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1000.0d0 13.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 10000.0d0 13.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 0.0d0 13.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d-100 13.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 0.001d0 13.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 0.01d0 13.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 0.1d0 13.0d0) 0.999999999998212d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 0.325d0 13.0d0) 0.9999999965538868d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.0d0 13.0d0) 0.9999961652652649d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.5d0 13.0d0) 0.9999568281610799d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 2.0d0 13.0d0) 0.999773749915344d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 10.0d0 13.0d0) 0.6939343679807489d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 20.0d0 13.0d0) 0.09521025607809151d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 100.0d0 13.0d0) 1.6590260807085882d-15 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1000.0d0 13.0d0) 1.7485119154486024d-205 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 10000.0d0 13.0d0) 0.0d0 +DBL-EPSILON+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.0d0 13.0d0) 0.0d0 +DBL-EPSILON+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 1.86631102655846d-25 13.0d0) 0.001d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 5.878822485045298d-19 13.0d0) 0.01d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 1.7879698335855542d-12 13.0d0) 0.1d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 3.446113137799052d-9 13.0d0) 0.325d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 3.8347347351359515d-6 13.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 4.317183892010419d-5 13.0d0) 1.5d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 2.2625008465604717d-4 13.0d0) 2.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.30606563201925113d0 13.0d0) 10.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.9047897439219085d0 13.0d0) 20.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.9999999999999983d0 13.0d0) 100.0d0 0.01d0)
  (ASSERT-posinf (CHI-SQUARED-PINV 1.0d0 13.0d0))
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.1932381452061236d0 1.5d0) 0.21198009293179954d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 4.83d-8 19.19d0) 1.6322801868602668d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.05d0 1263131.0d0) 1260517.7711333886d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.05d0 2526262.0d0) 2522565.864973351d0 +TEST-TOL6+)
  (ASSERT-posinf (CHI-SQUARED-QINV 0.0d0 13.0d0))
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 1.6590260807085882d-15 13.0d0) 100.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.09521025607809151d0 13.0d0) 20.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.6939343679807489d0 13.0d0) 10.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.999773749915344d0 13.0d0) 2.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.9999568281610799d0 13.0d0) 1.5d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.9999961652652649d0 13.0d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.9999999965538868d0 13.0d0) 0.325d0 1.d-6)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.999999999998212d0 13.0d0) 0.1d0 1.d-5)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 1.0d0 13.0d0) 0.0d0 +DBL-EPSILON+)
  ;; Automatically converted from cdf/test_auto.c
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 0.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d-10 1.3d0) 2.238884178785d-7 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 2.2388841787852728d-7 1.3d0) 1.d-10 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d-9 1.3d0) 1.000072827212d-6 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 1.0000728272124926d-6 1.3d0) 1.d-9 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d-8 1.3d0) 4.467161220799d-6 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 4.467161220799411d-6 1.3d0) 1.d-8 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d-7 1.3d0) 1.995407585451d-5 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 1.9954075854510294d-5 1.3d0) 1.d-7 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d-6 1.3d0) 8.913156700686d-5 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 8.913156700685821d-5 1.3d0) 1.d-6 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d-5 1.3d0) 3.981353794611d-4 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 3.9813537946105d-4 1.3d0) 1.d-5 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d-4 1.3d0) 0.0017783738888d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.001778373888800392d0 1.3d0) 1.d-4 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 0.001d0 1.3d0) 0.00794229637959d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.00794229637958962d0 1.3d0) 0.001d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 0.01d0 1.3d0) 0.0354141390254d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.03541413902540241d0 1.3d0) 0.01d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 0.1d0 1.3d0) 0.155426889584d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.15542688958403586d0 1.3d0) 0.1d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.0d0 1.3d0) 0.5878620132779d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.5878620132778858d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 10.0d0 1.3d0) 0.9973867890205d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-PINV 0.9973867890205305d0 1.3d0) 10.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 100.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 10000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 100000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1000000.0d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d7 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d8 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d9 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-P 1.d10 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d10 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d9 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d8 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d7 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1000000.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 100000.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 10000.0d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1000.0d0 1.3d0) 5.840240518729d-219 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 5.840240518728896d-219 1.3d0) 1000.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 100.0d0 1.3d0) 3.517864771108d-23 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 3.517864771107665d-23 1.3d0) 100.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 10.0d0 1.3d0) 0.00261321097947d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.002613210979469623d0 1.3d0) 10.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.0d0 1.3d0) 0.4121379867221d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.41213798672211427d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 0.1d0 1.3d0) 0.844573110416d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.8445731104159642d0 1.3d0) 0.1d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 0.01d0 1.3d0) 0.9645858609746d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.9645858609745978d0 1.3d0) 0.01d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 0.001d0 1.3d0) 0.9920577036204d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.9920577036204106d0 1.3d0) 0.001d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d-4 1.3d0) 0.9982216261112d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.9982216261111997d0 1.3d0) 1.d-4 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d-5 1.3d0) 0.9996018646205d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-QINV 0.9996018646205391d0 1.3d0) 1.d-5 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d-6 1.3d0) 0.999910868433d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d-7 1.3d0) 0.9999800459241d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d-8 1.3d0) 0.9999955328388d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d-9 1.3d0) 0.9999989999272d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 1.d-10 1.3d0) 0.9999997761116d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (CHI-SQUARED-Q 0.0d0 1.3d0) 1.0d0 +TEST-TOL6+))
