COMMIT_NUMBER=$(git rev-parse HEAD)

#TAGS=$(git tag --points-at $COMMIT_NUMBER)

TAGS=$(git show-ref --tags $COMMIT_NUMBER)

IFS=' ' read -r -a TAG_ARRAY <<< "$TAGS"

for tag in "${TAG_ARRAY[@]}"; do
  echo "Tag: $tag"
done

