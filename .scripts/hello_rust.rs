#!/bin/sh
#![allow()] /*
            # M. Al-Qudsi, public domain/MIT. with tweaks by sfort
            # <https://neosmart.net/blog/self-compiling-rust-code/>
            mkdir -p /tmp/srust
            OUT=/tmp/srust/$(printf "%s" $(realpath `which "$0"`) | md5sum | cut -d' '  -f1)
            MD5=`md5sum "$0" | cut -d' '  -f1`
            (test "${MD5}" = "`cat ${OUT}.md5 2>/dev/null`"||
            (grep -Eq '^\s*(\[.*?\])*\s*fn\s*main\b*' "$0" && (rm -f ${OUT};
            rustc "$0" -o ${OUT} && printf "%s" ${MD5} > ${OUT}.md5) || (rm -f ${OUT};
            printf "fn main() {//%s\n}" "$(cat $0)" | rustc - -o ${OUT} &&
            printf "%s" ${MD5} > ${OUT}.md5))) && exec ${OUT} $@ || exit $? #*/

fn main() {
    let name = std::env::args().skip(1).next().unwrap_or("world".into());
    println!("Hello, {}!", name);
}
