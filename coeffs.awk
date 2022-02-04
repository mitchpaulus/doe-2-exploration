BEGIN {
    FS=","
    RS=";"
    OFS="\t"
    ORS="\n"
}

$2 ~ /ReformEIRChiller/ && $1 ~ /Curve:Biquadratic/ && $2 ~ /CAPFT/ {
    # for fields 2 through 12, trim whitespace on both sides

    for (field = 2; field <= 12; field++) {
        gsub(/^[ \t\n]+/, "", $field)
        gsub(/[ \t\n]+$/, "", $field)
    }

    name = $2
    if (name ~ /Trane/) make = "Trane"
    else if (name ~ /York/) make = "York"
    else if (name ~ /Carrier/) make = "Carrier"
    else if (name ~ /McQuay/) make = "McQuay"
    else if (name ~ /DOE-2/) make = "DOE-2"
    else make = "Unknown"

    print name, make, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12
}
