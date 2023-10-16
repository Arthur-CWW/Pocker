#! /usr/bin/env bash
# confusing option parsing
[[ $# -gt 0 ]] && while [ "${1:0:2}" == '--' ]; do OPTION=${1:2}; [[ $OPTION =~ = ]] && declare "POCKER_${OPTION/=*/}=${OPTION/*=/}" || declare "POCKER_${OPTION}=x"; shift; done

for i in ${!POCKER_*}; do
		echo "$i"="${!i}"
done
