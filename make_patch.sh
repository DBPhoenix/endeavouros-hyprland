#!/usr/bin/env bash
rm -rf /tmp/calamares
git -C /tmp clone https://github.com/endeavouros-team/calamares.git
git -C /tmp/calamares checkout "22.12.3.6"
diff -p0 -ru /tmp/calamares/data/eos ./src > auto-patch.diff
