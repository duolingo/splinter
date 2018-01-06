# Splinter

Here's a dead simple,
<br>
pattern-based linter for code
<br>
in any language.

It's not that smart, but
<br>
it needs only Bash and runs
<br>
on any Unix.

Define your rules in
<br>
a file as a list of
<br>
message/regex pairs.

## Usage

1. Copy-paste `splinter` into your project and make it executable:

    ```bash
    chmod +x splinter
    ```
1. Create a rule file named something like `rules.txt`:

    ```text
    # This is a comment and will be ignored.
    # Each rule is defined as an error message followed
    # by the regex (POSIX ERE) that should trigger it.

    Remove trailing whitespace
    \s$

    Use `assert.strictEqual()` instead of `assert.equal()`
    assert\.equal
    ```
1. Run Splinter on your code. If you need to specify many source paths, [wildcards](https://ryanstutorials.net/linuxtutorial/wildcards.php) can help.

    ```bash
    # Pass as arguments the rule file followed by your source files/directories
    ./splinter rules.txt index.js src
    ```
1. See the output! The exit code will be 1 if violations are found - useful for CI.

    ```text
    index.js:25:Remove trailing whitespace
    index.js:26:Remove trailing whitespace
    src/foobar.test.js:130:Use `assert.strictEqual()` instead of `assert.equal()`
    ```
