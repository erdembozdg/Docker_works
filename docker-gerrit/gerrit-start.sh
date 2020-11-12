#!/usr/bin/env sh

set -e
echo "Starting Gerrit..."
exec su-exec "${GERRIT_USER}" "${GERRIT_SITE}"/bin/gerrit.sh "${GERRIT_START:-daemon}"

echo "Exit $?"
exit $?