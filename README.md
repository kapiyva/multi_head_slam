[OpenVSLAM](https://github.com/xdspacelab/openvslam)からフォーク  
# 動作環境
Ubuntu-18.04で動作確認済み

# インストール方法
ダウンロード後、インストールスクリプトに実行権限を与えて実行すると依存ソフトウェアのインストールと本体のビルドを行う。  
multi_head_slamディレクトリ直下で以下のコマンドを実行。  
``sudo chmod +x scripts/*.sh``  
``scipts/installScript.sh``

ビルド後のbuild/run_video_slamが作成システムに当たる。

# 実行オプション
-c カメラコンフィグ  
-v orbのボキャブラリーファイル。datasetのorb_vocab.dbow2を参照  
-m ビデオ1  
-n ビデオ2  

*scripts/run_demo.sh*か*scripts/run_opendataset.sh*を確認するとわかりやすいかも。  
その他詳細なオプションは[openvslamのドキュメント](https://openvslam.readthedocs.io/en/master/simple_tutorial.html#tracking-and-mapping)を参照。  

# 自作スクリプト群
scripts以下に配置  

* installScript  
依存ソフトウェアのインストールから本体のビルドまで一式やる。  
依存ソフトウェアはgarage以下に作成される。

* buildScript  
  本体のビルドだけやる。  
  ソースコードに変更を加えたらこれを実行すればビルドしてくれる。

* run_demo  
  Thetaを使って撮影したL棟前でのデモデータセットを使用してプログラムを実行。

* run_openDataset  
  OpenVSLAMのサンプルデータセットを使用してプログラムを実行。  
  aist_entrance_hallとaist_living_labの2種類があるため、e, lをオプションに指定する。  
  例）  
    `scripts/run_openDataset.sh l`
