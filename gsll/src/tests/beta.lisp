;; Regression test BETA for GSLL, automatically generated
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

(LISP-UNIT:DEFINE-TEST BETA
  (LISP-UNIT::ASSERT-NUMERICAL-EQUAL
   (LIST
    (LIST 0.3935474359990073d0 0.7063621551518341d0
	  0.044515648447265056d0 0.09286083229785232d0
	  0.210544366728104d0 0.010114317425185686d0
	  0.4595767375719009d0 0.1515157002550483d0
	  0.1731331145031117d0 0.4270743075655188d0
	  0.3353314142479658d0))
   (MULTIPLE-VALUE-LIST
    (LET ((RNG (MAKE-RANDOM-NUMBER-GENERATOR +MT19937+ 0)))
      (LOOP FOR I FROM 0 TO 10 COLLECT
	   (sample rng :beta :a 1.0d0 :b 2.0d0)))))
  (LISP-UNIT::ASSERT-NUMERICAL-EQUAL
   (LIST 1.8000000000000016d0)
   (MULTIPLE-VALUE-LIST (BETA-PDF 0.1d0 1.0d0 2.0d0)))
  ;; from cdf/test.c
  (ASSERT-TO-TOLERANCE (BETA-P 0.0d0 1.2d0 1.3d0) 0.0d0 +DBL-EPSILON+)
  (ASSERT-TO-TOLERANCE (BETA-P 1.d-100 1.2d0 1.3d0) 1.344349446564896d-120 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.001d0 1.2d0 1.3d0) 3.376300425045358d-4 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.01d0 1.2d0 1.3d0) 0.005343172640389295d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.1d0 1.2d0 1.3d0) 0.08339978283067484d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.325d0 1.2d0 1.3d0) 0.3286986541805839d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.5d0 1.2d0 1.3d0) 0.5297814294512991d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.9d0 1.2d0 1.3d0) 0.9385293972244306d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.99d0 1.2d0 1.3d0) 0.9968864383412543d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.999d0 1.2d0 1.3d0) 0.9998437928330677d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 1.0d0 1.2d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.0d0 1.2d0 1.3d0) 1.0d0 +DBL-EPSILON+)
  (ASSERT-TO-TOLERANCE (BETA-Q 1.d-100 1.2d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.001d0 1.2d0 1.3d0) 0.9996623699574955d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.01d0 1.2d0 1.3d0) 0.9946568273596107d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.1d0 1.2d0 1.3d0) 0.9166002171693252d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.325d0 1.2d0 1.3d0) 0.671301345819416d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.5d0 1.2d0 1.3d0) 0.4702185705487009d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.9d0 1.2d0 1.3d0) 0.061470602775569344d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.99d0 1.2d0 1.3d0) 0.0031135616587456196d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.999d0 1.2d0 1.3d0) 1.5620716693236575d-4 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 1.0d0 1.2d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 0.0d0 1.2d0 1.3d0) 0.0d0 +DBL-EPSILON+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 1.344349446564896d-120 1.2d0 1.3d0) 1.d-100 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 3.376300425045358d-4 1.2d0 1.3d0) 0.001d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 0.005343172640389295d0 1.2d0 1.3d0) 0.01d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 0.08339978283067484d0 1.2d0 1.3d0) 0.1d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 0.3286986541805839d0 1.2d0 1.3d0) 0.325d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 0.5297814294512991d0 1.2d0 1.3d0) 0.5d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 0.9385293972244306d0 1.2d0 1.3d0) 0.9d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 0.9968864383412543d0 1.2d0 1.3d0) 0.99d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 0.9998437928330677d0 1.2d0 1.3d0) 0.999d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 1.0d0 1.2d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-QINV 1.0d0 1.2d0 1.3d0) 0.0d0 +DBL-EPSILON+)
  (ASSERT-TO-TOLERANCE (BETA-QINV 1.0d0 1.2d0 1.3d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-QINV 0.9996623699574955d0 1.2d0 1.3d0) 0.001d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-QINV 0.9946568273596107d0 1.2d0 1.3d0) 0.01d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-QINV 0.9166002171693252d0 1.2d0 1.3d0) 0.1d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-QINV 0.671301345819416d0 1.2d0 1.3d0) 0.325d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-QINV 0.4702185705487009d0 1.2d0 1.3d0) 0.5d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-QINV 0.061470602775569344d0 1.2d0 1.3d0) 0.9d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-QINV 0.0031135616587456196d0 1.2d0 1.3d0) 0.99d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-QINV 1.5620716693236575d-4 1.2d0 1.3d0) 0.999d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-QINV 0.0d0 1.2d0 1.3d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-PINV 0.025d0 2133.0d0 7868.0d0) 0.20530562929915866d0 +TEST-TOL6+)
  ;; from cdf/test_auto.c
  (ASSERT-TO-TOLERANCE (BETA-P 0.0d0 1.3d0 2.7d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 1.d-10 1.3d0 2.7d0) 3.329258013904d-13 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 1.d-9 1.3d0 2.7d0) 6.642743046207d-12 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 1.d-8 1.3d0 2.7d0) 1.32540147535d-10 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 1.d-7 1.3d0 2.7d0) 2.644523387276d-9 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 1.d-6 1.3d0 2.7d0) 5.276513292646d-8 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 1.d-5 1.3d0 2.7d0) 1.052793708285d-6 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 1.d-4 1.3d0 2.7d0) 2.100417958505d-5 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.001d0 1.3d0 2.7d0) 4.1872612184d-4 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.01d0 1.3d0 2.7d0) 0.008282559388393d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.1d0 1.3d0 2.7d0) 0.151219457801d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.2d0 1.3d0 2.7d0) 0.3358123280407d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.3d0 1.3d0 2.7d0) 0.5104163996495d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.4d0 1.3d0 2.7d0) 0.662068239941d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.5d0 1.3d0 2.7d0) 0.7852786981833d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.6d0 1.3d0 2.7d0) 0.878400587895d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.8d0 1.3d0 2.7d0) 0.9801824171406d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.9d0 1.3d0 2.7d0) 0.9968736852365d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.99d0 1.3d0 2.7d0) 0.9999936324464d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.999d0 1.3d0 2.7d0) 0.9999999872699d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.9999d0 1.3d0 2.7d0) 0.9999999999746d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 0.99999d0 1.3d0 2.7d0) 0.9999999999999d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-P 1.0d0 1.3d0 2.7d0) 1.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 1.0d0 1.3d0 2.7d0) 0.0d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.99999d0 1.3d0 2.7d0) 5.069044353228d-14 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.9999d0 1.3d0 2.7d0) 2.540490259443d-11 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.999d0 1.3d0 2.7d0) 1.273010336738d-8 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.99d0 1.3d0 2.7d0) 6.367553598351d-6 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.9d0 1.3d0 2.7d0) 0.003126314763488d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.8d0 1.3d0 2.7d0) 0.01981758285937d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.6d0 1.3d0 2.7d0) 0.121599412105d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.5d0 1.3d0 2.7d0) 0.2147213018167d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.4d0 1.3d0 2.7d0) 0.337931760059d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.3d0 1.3d0 2.7d0) 0.4895836003505d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.2d0 1.3d0 2.7d0) 0.6641876719593d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.1d0 1.3d0 2.7d0) 0.848780542199d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.01d0 1.3d0 2.7d0) 0.9917174406116d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.001d0 1.3d0 2.7d0) 0.9995812738782d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 1.d-4 1.3d0 2.7d0) 0.9999789958204d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 1.d-5 1.3d0 2.7d0) 0.9999989472063d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 1.d-6 1.3d0 2.7d0) 0.9999999472349d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 1.d-7 1.3d0 2.7d0) 0.9999999973555d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 1.d-8 1.3d0 2.7d0) 0.9999999998675d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 1.d-9 1.3d0 2.7d0) 0.9999999999934d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 1.d-10 1.3d0 2.7d0) 0.9999999999997d0 +TEST-TOL6+)
  (ASSERT-TO-TOLERANCE (BETA-Q 0.0d0 1.3d0 2.7d0) 1.0d0 +TEST-TOL6+))

