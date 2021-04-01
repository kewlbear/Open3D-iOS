sh Scripts/toolchain.sh

TAG=0.0.`date +%Y%m%d%H%M%S`

sh Scripts/package.sh $TAG

echo "::set-output name=tag::$TAG"
