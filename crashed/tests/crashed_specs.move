module crashed::crashed_specs;

use crashed::crashed;

#[spec_only]
use prover::prover::{requires, asserts, ensures};

#[spec(prove, target=crashed::hello_world)]
fun hello_world_spec(value: u64): u64 {
    let result = crashed::hello_world(value);

    result
}