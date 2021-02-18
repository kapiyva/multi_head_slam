cd `dirname $0`
if [ $# = 0 ]; then
    echo 'entrance_hallならe、livingならlを引数に入れる'
    exit 0
fi
if [ $1 = "e" ]; then
    ../build/run_video_slam  -v ../dataset/orb_vocab.dbow2 -c ../dataset/fisheye.yaml -m ../dataset/entrance/entrance3.mp4 -n ../dataset/entrance/entrance1.mp4 
elif [ $1 = "l" ]; then
    ../build/run_video_slam  -v ../dataset/orb_vocab.dbow2 -c ../dataset/fisheye.yaml -m ../dataset/living/living1.mp4 -n ../dataset/living/living2.mp4
fi
