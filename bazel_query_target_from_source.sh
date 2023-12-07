#!/bin/bash
filename=$(find * -iname ${1} | head -n 1);
package=$(bazel query ${filename});
target=$(bazel query "attr('srcs', $package, ${package//:*/}:*)");
echo $target | tr ' ' '\n'

