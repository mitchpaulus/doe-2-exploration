redo-ifchange remove_comments.awk chillers.idf coeffs.awk
awk -f remove_comments.awk chillers.idf | awk -f coeffs.awk
