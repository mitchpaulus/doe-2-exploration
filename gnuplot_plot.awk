BEGIN {
    FS=OFS="\t"
}

NR == 1 {
    for ( i = 2; i <= NF; i ++) {
        if (i == 2) {
            printf "plot 'trane_data.tsv' using 1:%d title '%s' with lines, \\\n", i, $i

        } else if (i == NF) {
            printf "     'trane_data.tsv' using 1:%d title '%s' with lines\n", i, $i
        }
        else {
            printf "     'trane_data.tsv' using 1:%d title '%s' with lines, \\\n", i, $i

        }


    }
}
