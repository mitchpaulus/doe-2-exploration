BEGIN {
    FS=OFS="\t"

    chwst = 42 # F
    chwst_c = (chwst - 32) * 5/9

    min_cwrt = 65
    max_cwrt = 100
}


$2 == "Trane" {

    equipment_min_cwrt = $11
    equipment_max_cwrt = $12

    name = $1

    C = $3
    x = $4
    xx = $5
    y = $6
    yy = $7
    xy = $8

    for (cwrt_f = min_cwrt; cwrt_f <= max_cwrt; cwrt_f++) {

        cwrt_c = (cwrt_f - 32) * 5/9

        if (cwrt_c < equipment_min_cwrt || cwrt_c > equipment_max_cwrt) continue

        capft = C + (x * chwst_c) + (xx * chwst_c * chwst_c) + (y * cwrt_c) + (yy * cwrt_c * cwrt_c) + (xy * chwst_c * cwrt_c)

        names[name]

        data[name ";" cwrt_f] = capft
    }
}

END {

    printf "CWRT (F)"
    for (name in names) { printf "\t%s", name }
    printf "\n"

    for (cwrt_f = min_cwrt; cwrt_f <= max_cwrt; cwrt_f++) {
        printf "%s", cwrt_f
        for (name in names) {
            if (data[name ";" cwrt_f] == "") {
                printf "\t"
            } else {
                printf "\t%.3f", data[name ";" cwrt_f]
            }
        }
        printf "\n"
    }
}
