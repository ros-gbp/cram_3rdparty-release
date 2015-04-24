;; Generators of random numbers.
;; Liam Healy, Sat Jul 15 2006 - 14:43
;; Time-stamp: <2010-07-16 17:11:25EDT generators.lisp>
;;
;; Copyright 2006, 2007, 2008, 2009 Liam M. Healy
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

;;; /usr/include/gsl/gsl_rng.h

;;;;****************************************************************************
;;;; Object
;;;;****************************************************************************

(defmobject random-number-generator
    "gsl_rng"
  ((rng-type :pointer))
  "random number generator"
  :documentation			; FDL
  "Make and optionally initialize (or `seed') the random number
   generator of the specified type.  If the generator is seeded with
   the same value of s on two different runs, the same stream of
   random numbers will be generated by successive calls.  If different
   values of s are supplied, then the generated streams of random
   numbers should be completely different.  If the seed s is zero then
   the standard seed from the original implementation is used instead.
   For example, the original Fortran source code for the *ranlux*
   generator used a seed of 314159265, and so choosing s equal to zero
   reproduces this when using *ranlux*."
  :initialize-suffix "set"
  :ri-c-return :void
  :initialize-args ((value :ulong)))

(defmethod print-object ((object random-number-generator) stream)
  (print-unreadable-object (object stream :type t :identity t)
    (format stream "of type ~a" (name object))))

;;;;****************************************************************************
;;;; Seed
;;;;****************************************************************************

(defmpar +default-seed+
    "gsl_rng_default_seed"
  "The default seed for random number generators."
  :c-type :ulong :read-only nil)

;;;;****************************************************************************
;;;; Sampling
;;;;****************************************************************************

(defmfun get-random-number (generator)
  "gsl_rng_get" (((mpointer generator) :pointer))
  :c-return :ulong
  :documentation			; FDL
  "Generate a random integer.  The
   minimum and maximum values depend on the algorithm used, but all
   integers in the range [min, max] are equally likely.  The
   values of min and max can determined using the auxiliary
   functions #'rng-max and #'rng-min.")

(export 'sample)
(defgeneric sample (source distribution &key #+sbcl &allow-other-keys)
  (:documentation
   "Sample from the probability distribution."))

(defmfun sample ((source random-number-generator) (type (eql :uniform)) &key)
  "gsl_rng_uniform" (((mpointer source) :pointer))
  :definition :method
  :c-return :double
  :documentation			; FDL
  "A double precision floating point number uniformly
   distributed in the range [0,1).  The range includes 0.0 but excludes 1.0.
   The value is typically obtained by dividing the result of
   #'get-random-number by (+ (rng-max generator) 1.0) in double
   precision.  Some generators compute this ratio internally so that they
   can provide floating point numbers with more than 32 bits of randomness
   (the maximum number of bits that can be portably represented in a single
   :ulong.")

(defmfun sample ((source random-number-generator) (type (eql :uniform>0)) &key)
  "gsl_rng_uniform_pos" (((mpointer source) :pointer))
  :definition :method
  :c-return :double
  :documentation			; FDL
  "Return a positive double precision floating point number uniformly
   distributed in the range (0,1), excluding both 0.0 and 1.0.  The
   number is obtained by sampling the generator with the algorithm for
   type 'uniform until a non-zero value is obtained.  You can use this
   function if you need to avoid a singularity at 0.0.")

(defmfun sample
    ((source random-number-generator) (type (eql :uniform-fixnum))
     &key upperbound)
  "gsl_rng_uniform_int"
  (((mpointer source) :pointer) (upperbound :ulong))
  :definition :method
  :c-return :ulong
  :documentation			; FDL
  "Generate a random integer from 0 to upperbound-1 inclusive.
   All integers in the range are equally likely, regardless
   of the generator used.  An offset correction is applied so that zero is
   always returned with the correct probability, for any minimum value of
   the underlying generator.  If upperbound is larger than the range
   of the generator then the function signals an error.")

;;;;****************************************************************************
;;;; Information functions about instances
;;;;****************************************************************************

(defmfun name ((rng-instance random-number-generator))
  "gsl_rng_name" (((mpointer rng-instance) :pointer))
  :definition :method
  :c-return :string)

(defmfun rng-max (rng-instance)
  "gsl_rng_max" (((mpointer rng-instance) :pointer))
  :c-return :unsigned-long
  :documentation "The largest value that #'get-random-number
   can return.")

(defmfun rng-min (rng-instance)
  "gsl_rng_min" (((mpointer rng-instance) :pointer))
  :c-return :unsigned-long
  :documentation			; FDL
  "The smallest value that #'get-random-number
   can return.  Usually this value is zero.  There are some generators with
   algorithms that cannot return zero, and for these generators the minimum
   value is 1.")

(export 'rng-state)
(defgeneric rng-state (rng-instance)
  (:documentation			; FDL
   "A pointer to the state of generator."))

(defmfun rng-state ((rng-instance random-number-generator))
  "gsl_rng_state" (((mpointer rng-instance) :pointer))
  :c-return :pointer
  :definition :method
  :index gsl-random-state)

(defmfun size ((rng-instance random-number-generator))
  "gsl_rng_size" (((mpointer rng-instance) :pointer))
  :definition :method
  :c-return sizet
  :index gsl-random-state)

(export 'gsl-random-state)
(defun gsl-random-state (rng-instance)
  "The complete state of a given random number generator, specified
   as a vector of bytes."
  (let* ((gen rng-instance)
	 (ans
	  (make-array (size gen)
		      :element-type '(unsigned-byte 8))))
    (loop for i from 0 below (length ans)
       do
       (setf (aref ans i)
	     (mem-aref (rng-state gen) :uint8 i)))
    ans))

;;;;****************************************************************************
;;;; Copying state
;;;;****************************************************************************

(defmfun rng-copy (source destination)
  "gsl_rng_memcpy"
  (((mpointer destination) :pointer) ((mpointer source) :pointer))
  :export nil
  :index grid:copy
  :documentation			; FDL
  "Copy the random number generator source into the
   pre-existing generator destination,
   making destination into an exact copy
   of source.  The two generators must be of the same type.")

(defmfun rng-clone (source)
  "gsl_rng_clone" (((mpointer source) :pointer))
  :c-return (crtn :pointer)
  :return ((make-instance 'random-number-generator :mpointer crtn))
  :export nil
  :index grid:copy)

(defmethod grid:copy
    ((source random-number-generator) &key destination &allow-other-keys)
  (if destination
      (rng-copy source destination)
      (rng-clone source)))

;;;;****************************************************************************
;;;; Examples and unit test
;;;;****************************************************************************

(save-test random-number-generators
 (let ((rng (make-random-number-generator +mt19937+ 0)))
   (loop for i from 0 to 10
	 collect
	 (sample rng :uniform-fixnum :upperbound 1000)))
 (let ((rng (make-random-number-generator *cmrg* 0)))
   (loop for i from 0 to 10 collect (sample rng 'uniform))))
