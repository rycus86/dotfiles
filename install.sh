#!/bin/sh

install_file() {
    echo "Installing $1 ..."

    SUBDIR="$(dirname "$1")"
    if [ "${SUBDIR}" != "." ]; then
        mkdir -p "${HOME}/${SUBDIR}"
    fi

    cp "$1" "${HOME}/$1"
}

for IFILE in $(find . -not -path '*/.git/*' -type f | sort); do
    if basename "$IFILE" | grep -E '^(README.md|install.sh)$' >/dev/null; then
        continue
    fi

    install_file "$IFILE"
done

