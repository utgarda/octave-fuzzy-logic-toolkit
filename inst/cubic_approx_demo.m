## Copyright (C) 2011 L. Markowsky <lmarkov@users.sourceforge.net>
##
## This file is part of the fuzzy-logic-toolkit.
##
## The fuzzy-logic-toolkit is free software; you can redistribute it
## and/or modify it under the terms of the GNU General Public License
## as published by the Free Software Foundation; either version 3 of
## the License, or (at your option) any later version.
##
## The fuzzy-logic-toolkit is distributed in the hope that it will be
## useful, but WITHOUT ANY WARRANTY; without even the implied warranty
## of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with the fuzzy-logic-toolkit; see the file COPYING.  If not,
## see <http://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {Script File} {} cubic_approx_demo
##
## Demonstrate the use of the Octave Fuzzy Logic Toolkit to approximate a
## non-linear function using a Sugeno-type FIS with linear output membership
## functions.
##
## The demo:
## @itemize @minus
## @item
## reads an FIS structure from a file
## @item
## plots the input membership functions
## @item
## plots the output as a function of the input
## @end itemize
##
## @seealso{heart_demo_1, heart_demo_2, linear_tip_demo, mamdani_tip_demo, sugeno_tip_demo}
## @end deftypefn

## Author:        L. Markowsky
## Keywords:      fuzzy-logic-toolkit fuzzy tests demos
## Directory:     fuzzy-logic-toolkit/inst
## Filename:      cubic_approx_demo.m
## Last-Modified: 17 Jul 2011

## Read the FIS structure from a file.
fis = readfis ('cubic-approximator.fis');

## Plot the input membership functions.
plotmf (fis, 'input', 1);

## Plot the output y as a function of the input x.
gensurf (fis);