cd `dirname $0`
if [ $# = 0 ]; then
    echo 'entrance_hallならe、livingならlを引数に入れる'
    exit 0
fi
if [ $1 = "e" ]; then
    ../build/run_video_slam  -v orb_vocab.dbow2 -c config/sample.yaml -m video/entrance3.mp4 -n video/entrance1.mp4 
elif [ $1 = "l" ]; then
    ../build/run_video_slam  -v orb_vocab.dbow2 -c config/sample.yaml -m video/living1.mp4 -n video/living2.mp4
fi
