module chrashed::crashed_specs;

use chrashed::chrashed;

#[spec_only]
use prover::prover::{requires, asserts, ensures};

#[spec(prove, target=chrashed::hello_world)]
fun hello_world_spec(value: u64): u64 {
    let result = chrashed::hello_world(value);

    result
}