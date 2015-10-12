(*************************************************************
 *                                                           *
 *  UKANO: UnlinKability and ANOnymity verifier              *
 *                                                           *
 *  Lucca Hirschi                                            *
 *                                                           *
 *  Copyright (C) 2015                                       *
 *                                                           *
 *************************************************************)

(*

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details (in file LICENSE).

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

*)
(* This module provides functions from the UnlinKability and ANOnymity
   verifier built on top of ProVerif as described in [1]. (todo-lucca:ref) *)


(** If the inputted process is not in the "2-agents protocol class" (see [1]). *)
exception NotInClass of string

(** [transC1 p inNameFile outNameFile] writes in the file [outNameFile] a complete ProVerif file checking condition 1 for
    the process [p] and the theory contained in [inNameFile]. *)
val transC1 : Types.process -> string -> string -> unit

(** [transC2 p inNameFile outNameFile] writes in the file [outNameFile] a complete ProVerif file checking condition 2 for
    the process [p] and the theory contained in [inNameFile]. *)
val transC2 : Types.process -> string -> string -> unit

(** Display a representation of the 2-agents protocol associated to a given process. *)
val displayProcessProtocol : Types.process -> unit

(* To implement later on: *)
(** Check Condition 1 (outptuts are relation-free). *)
val checkC1 : Types.process -> bool

(** Check Condition 2 (tests do not leak information about agents). *)
val checkC2 : Types.process -> bool