#!/bin/bash

set -e

./ci/test_merge_conflict_markers.sh && echo "✔ conflict markers ok" || exit 1
./ci/test_missing_newlines.sh && echo "✔ EOF newlines ok" || exit 1
./ci/test_tabs.sh && echo "✔ indentation ok" || exit 1
./ci/test_trailing_whitespace.sh && echo "✔ trailing whitespace ok" || exit 1
./ci/test_cleaner.sh && echo "✔ no compilation artifacts" || exit 1
