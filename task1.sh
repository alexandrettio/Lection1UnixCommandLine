#!/bin/bash

find . -iname '*.java' -type f -exec grep 'import ru.hh.deathstar' -l {} \; > almost_harmless.txt