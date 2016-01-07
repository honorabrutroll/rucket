#lang racket/base
(require ffi/unsafe
         ffi/unsafe/define
         racket/path)

(define cd (path-only (path->complete-path (find-system-path 'run-file))))
(define libname "librmapcollision")
(define libpath (string-append (path->string cd) libname))
(define-ffi-definer define-rust (ffi-lib libpath))