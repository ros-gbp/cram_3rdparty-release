;; Regression test NUMERICAL-INTEGRATION for GSLL, automatically generated
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

(LISP-UNIT:DEFINE-TEST
    NUMERICAL-INTEGRATION
  (let ((lisp-unit:*epsilon* (* 5.0d7 double-float-epsilon)))
    (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
     (LIST -0.18927518534894017d0 1.1291337120150095d-8)
     (MULTIPLE-VALUE-LIST
      (INTEGRATION-QAWS 'INTEGRATION-TEST-F458 0.0d0 1.0d0
			0.0d0 0.0d0 1 0 0.0d0 1.d-7))))
  (let ((lisp-unit:*epsilon* (* 5.0d7 double-float-epsilon)))
    (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
     (LIST 0.9896686656601706d0 5.888032496373315d-8)
     (MULTIPLE-VALUE-LIST
      (INTEGRATION-QAWS 'INTEGRATION-TEST-F458 0.0d0 1.0d0
			-0.5d0 -0.3d0 0 0 0.0d0 1.d-7))))
  (let ((lisp-unit:*epsilon* (* 5.0d7 double-float-epsilon)))
    (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
     (LIST -0.36366794705865396d0 2.851348775255562d-8)
     (MULTIPLE-VALUE-LIST
      (INTEGRATION-QAWS 'INTEGRATION-TEST-F458 0.0d0 1.0d0
			-0.5d0 -0.3d0 1 0 0.0d0 1.d-7))))
  (let ((lisp-unit:*epsilon* (* 5.0d7 double-float-epsilon)))
    (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
     (LIST -1.9114892533634094d0 9.854016804653183d-9)
     (MULTIPLE-VALUE-LIST
      (INTEGRATION-QAWS 'INTEGRATION-TEST-F458 0.0d0 1.0d0
			-0.5d0 -0.3d0 0 1 0.0d0 1.d-7))))
  (let ((lisp-unit:*epsilon* (* 5.0d7 double-float-epsilon)))
    (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
     (LIST 0.31599228628110465d0 2.33618347181736d-8)
     (MULTIPLE-VALUE-LIST
      (INTEGRATION-QAWS 'INTEGRATION-TEST-F458 0.0d0 1.0d0
			-0.5d0 -0.3d0 1 1 0.0d0 1.d-7))))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST -0.12813684839916742d0 6.875028324415666d-12)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAWO 'INTEGRATION-TEST-F456 0.0d0
		      (* 10 PI) 1.0d0 :SINE 100 0.0d0
		      1.d-7)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 0.12813684839916742d0 6.875028324415666d-12)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAWO 'INTEGRATION-TEST-F456 0.0d0
		      (* 10 PI) -1.0d0 :SINE 100 0.0d0
		      1.d-7)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 0.9999999999279803d0 1.556289974669056d-8)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAWF 'INTEGRATION-TEST-F457 0.0d0
		      (/ PI 2) 1.0d0 :COSINE 1000 1.d-7)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 2.0d0 2.220446049250313d-14 21)
   (MULTIPLE-VALUE-LIST (INTEGRATION-QNG 'SIN 0.0d0 PI)))
  (LISP-UNIT:ASSERT-ERROR 'TYPE-ERROR
			  (INTEGRATION-QAG 'SIN 0.0d0 PI
					   :GAUSS15 20))
  (LISP-UNIT:ASSERT-ERROR 'TYPE-ERROR
			  (INTEGRATION-QAG 'SIN 0.0d0 PI
					   :GAUSS21 40))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 0.07716049379303085d0 9.424302194248481d-8 21)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QNG (INTEGRATION-TEST-F1 2.6d0) 0.0d0
		     1.0d0 0.1d0 0.0d0)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST -0.07716049379303085d0 9.424302194248481d-8 21)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QNG (INTEGRATION-TEST-F1 2.6d0) 1.0d0
		     0.0d0 0.1d0 0.0d0)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 0.07716049382706505d0 2.666891413688592d-12 43)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QNG (INTEGRATION-TEST-F1 2.6d0) 0.0d0
		     1.0d0 0.0d0 1.d-9)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST -0.07716049382706505d0 2.666891413688592d-12 43)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QNG (INTEGRATION-TEST-F1 2.6d0) 1.0d0
		     0.0d0 0.0d0 1.d-9)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST -0.7238969575482962d0 1.2776768895200564d-14 43)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QNG (INTEGRATION-TEST-F3 1.3d0) 0.3d0
		     2.71d0 0.0d0 1.d-12)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 0.7238969575482962d0 1.2776768895200564d-14 43)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QNG (INTEGRATION-TEST-F3 1.3d0) 2.71d0
		     0.3d0 0.0d0 1.d-12)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 0.0771604938271603d0 8.566535680046933d-16 87)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QNG (INTEGRATION-TEST-F1 2.6d0) 0.0d0
		     1.0d0 0.0d0 1.d-13)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST -0.0771604938271603d0 8.566535680046933d-16 87)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QNG (INTEGRATION-TEST-F1 2.6d0) 1.0d0
		     0.0d0 0.0d0 1.d-13)))
  (LISP-UNIT:ASSERT-ERROR 'FAILURE-TO-REACH-TOLERANCE
			  (INTEGRATION-QNG
			   (INTEGRATION-TEST-F1 -0.9d0)
			   0.0d0 1.0d0 0.0d0 0.001d0))
  (LISP-UNIT:ASSERT-ERROR 'FAILURE-TO-REACH-TOLERANCE
			  (INTEGRATION-QNG
			   (INTEGRATION-TEST-F1 -0.9d0)
			   1.0d0 0.0d0 0.0d0 0.001d0))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 0.07716049382715855d0 6.679384889070553d-12)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAG (INTEGRATION-TEST-F1 2.6d0) 0.0d0
		     1.0d0 :GAUSS15 0.0d0 1.d-10 1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST -0.07716049382715855d0 6.679384889070553d-12)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAG (INTEGRATION-TEST-F1 2.6d0) 1.0d0
		     0.0d0 :GAUSS15 0.0d0 1.d-10 1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 0.0771604938271605D0 2.227969532823568D-15)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAG (INTEGRATION-TEST-F1 2.6d0) 0.0d0
		     1.0d0 :GAUSS21 1.d-14 0.0d0 1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST -0.0771604938271605D0 2.227969532823568D-15)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAG (INTEGRATION-TEST-F1 2.6d0) 1.0d0
		     0.0d0 :GAUSS21 1.d-14 0.0d0 1000)))
  (LISP-UNIT:ASSERT-ERROR 'ROUNDOFF-FAILURE
			  (INTEGRATION-QAG
			   (INTEGRATION-TEST-F3 1.3d0)
			   0.3d0 2.71d0 :GAUSS31 1.d-14
			   0.0d0 1000))
  (LISP-UNIT:ASSERT-ERROR 'ROUNDOFF-FAILURE
			  (INTEGRATION-QAG
			   (INTEGRATION-TEST-F3 1.3d0)
			   2.71d0 0.3d0 :GAUSS31 1.d-14
			   0.0d0 1000))
  (LISP-UNIT:ASSERT-ERROR 'SINGULARITY
			  (INTEGRATION-QAG
			   (INTEGRATION-TEST-F16 2.0d0)
			   -1.0d0 1.0d0 :GAUSS51 1.d-14
			   0.0d0 1000))
  (LISP-UNIT:ASSERT-ERROR 'SINGULARITY
			  (INTEGRATION-QAG
			   (INTEGRATION-TEST-F16 2.0d0)
			   1.0d0 -1.0d0 :GAUSS51 1.d-14
			   0.0d0 1000))
  (LISP-UNIT:ASSERT-ERROR 'EXCEEDED-MAXIMUM-ITERATIONS
			  (INTEGRATION-QAG
			   (INTEGRATION-TEST-F16 2.0d0)
			   -1.0d0 1.0d0 :GAUSS61 1.d-14
			   0.0d0 3))
  (LISP-UNIT:ASSERT-ERROR 'EXCEEDED-MAXIMUM-ITERATIONS
			  (INTEGRATION-QAG
			   (INTEGRATION-TEST-F16 2.0d0)
			   1.0d0 -1.0d0 :GAUSS61 1.d-14
			   0.0d0 3))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 0.07716049382715791d0 2.216394969317974d-12)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAGS (INTEGRATION-TEST-F1 2.6d0) 0.0d0
		      1.0d0 0.0d0 1.d-10 1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST -0.07716049382715791d0 2.216394969317974d-12)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAGS (INTEGRATION-TEST-F1 2.6d0) 1.0d0
		      0.0d0 0.0d0 1.d-10 1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST -5908.755278982137d0 1.2996641844811724d-10)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAGS (INTEGRATION-TEST-F11 2.0d0) 1.0d0
		      1000.0d0 1.d-7 0.0d0 1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 5908.755278982137d0 1.2996641844811724d-10)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAGS (INTEGRATION-TEST-F11 2.0d0)
		      1000.0d0 1.0d0 1.d-7 0.0d0 1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST -0.3616892186127036d0 3.0167169113304304d-6)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAGIU 'INTEGRATION-TEST-F455 0.0d0 0.0d0
		       0.001d0 1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 65536.00000000025d0 7.121667184124547d-4)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAGIU (INTEGRATION-TEST-F15 5.0d0) 0.0d0
		       0.0d0 1.d-7 1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 1.0000000000067134d-4 3.0840620210883837d-9)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAGIU (INTEGRATION-TEST-F16 1.0d0) 99.9d0
		       1.d-7 0.0d0 1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 2.2758757944687478d0 7.436490135715555d-9)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAGI 'INTEGRATION-TEST-MYFN1 1.d-7 0.0d0
		      1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 2.718281828459045d0 1.58818544083484d-10)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAGIL (INTEGRATION-TEST-MYFN2 1.0d0)
		       1.0d0 1.d-7 0.0d0 1000)))
  (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
   (LIST 52.740806116727164d0 1.7557038486870624d-4)
   (MULTIPLE-VALUE-LIST
    (INTEGRATION-QAGP
     'INTEGRATION-TEST-F454
     (grid:make-foreign-array
      'double-float :initial-contents (list 0.0d0 1.0d0 (SQRT 2.0d0) 3.0d0))
     0.0d0 0.001d0 1000)))
  (let ((lisp-unit:*epsilon* 1.0d-9))
    (LISP-UNIT:ASSERT-NUMERICAL-EQUAL
     (LIST -0.08994400695837003d0 1.18529017636488d-6)
     (MULTIPLE-VALUE-LIST
      (INTEGRATION-QAWC 'INTEGRATION-TEST-F459 -1.0d0 5.0d0
			0.0d0 0.0d0 0.001d0 1000)))))

