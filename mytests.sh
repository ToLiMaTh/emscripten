#!/bin/bash 

tests/runner benchmark.test_base64
tests/runner benchmark.test_conditionals
tests/runner benchmark.test_copy
tests/runner benchmark.test_corrections
tests/runner benchmark.test_fannkuch
tests/runner benchmark.test_fasta_float
tests/runner benchmark.test_ifs
tests/runner benchmark.test_matrix_multiply
tests/runner benchmark.test_memcpy_128b
tests/runner benchmark.test_memcpy_4k
tests/runner benchmark.test_memcpy_1mb
tests/runner benchmark.test_memops
tests/runner benchmark.test_memset_128b
tests/runner benchmark.test_memset_4k
tests/runner benchmark.test_memset_1mb
tests/runner benchmark.test_primes
tests/runner benchmark.test_skinning
tests/runner benchmark.test_zzz_linpack
tests/runner benchmark.test_zzz_lzma

