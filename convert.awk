BEGIN {
    FS= ";"
    print "WAPathMigration = {"
}

/\.(m2|blp)$/{
    printf("  [\"%s\"] = \"%s\",\n", $2, $1)
    sub(/\.(m2|blp)$/, "", $2)
    printf("  [\"%s\"] = \"%s\",\n", $2, $1)
}

END {
    print "}"
}