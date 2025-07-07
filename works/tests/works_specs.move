module works::works_specs;

use works::works;

#[spec_only]
use prover::prover::{requires, asserts, ensures};

#[spec(prove, target=works::hello_world)]
fun hello_world_spec(value: u64): u64 {
    let result = works::hello_world(value);

    result
}