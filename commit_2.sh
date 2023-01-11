#tags=$(git tag --points-at HEAD)
#for tag in $tags; do
#  eval "tag_$tag=\$tag"
#done
#echo "$tags"

# Get the SHA of the last commit
LAST_COMMIT_SHA=$(git rev-parse HEAD)

# Get a list of all tags that point to the last commit
TAGS=$(git tag --points-at $LAST_COMMIT_SHA)

# Print the list of tags
echo "$TAGS"

