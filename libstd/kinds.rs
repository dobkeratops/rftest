// Copyright 2012 The Rust Project Developers. See the COPYRIGHT
// file at the top-level directory of this distribution and at
// http://rust-lang.org/COPYRIGHT.
//
// Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
// http://www.apache.org/licenses/LICENSE-2.0> or the MIT license
// <LICENSE-MIT or http://opensource.org/licenses/MIT>, at your
// option. This file may not be copied, modified, or distributed
// except according to those terms.

/*!
The kind traits

Rust types can be classified in various useful ways according to
intrinsic properties of the type. These classifications, often called
'kinds', are represented as traits.

They cannot be implemented by user code, but are instead implemented
by the compiler automatically for the types to which they apply.

The 2 kinds are

* Send - owned types and types containing owned types.  These types
  may be transferred across task boundaries.

* Freeze - types that are deeply immutable.

*/

#[allow(missing_doc)];

#[lang="send"]
pub trait Send {
    // empty.
}

#[lang="freeze"]
pub trait Freeze {
    // empty.
}

#[lang="sized"]
pub trait Sized {
    // Empty.
}
