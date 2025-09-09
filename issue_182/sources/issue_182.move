module issue_182::issue_182;

use prover::prover::asserts;

public fun func_a(number: u64) {
    func_b(number);
}

public fun func_b(number: u64) {
    assert!(number > 0);
}

#[spec(prove, focus)]
fun func_a_spec(number: u64) {
    asserts(number > 0);

    func_a(number);
}

#[spec(prove)]
fun func_b_spec(number: u64) {
    // asserts(number > 0);

    func_b(number);
}