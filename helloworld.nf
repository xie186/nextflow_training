#!/usr/bin/env nextflow

/*
* Use echo to pring hello world 
* This is a simple example of a Nextflow script
* that prints "Hello, World!" to the console.
*/

process sayHello {
    echo true
    output: 
        path "output.txt"
    script:
    """
    echo "Hello, World!" > output.txt
    """
}

workflow {
    sayHello()
}