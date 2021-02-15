clear
mkdir models
cp ../1_step1/models/checkpoint.pth.tar ./models/checkpoint_ba.pth.tar
mkdir log
python3 train.py --data=/Dataset/ILSVRC2012 --batch_size=80 --learning_rate=5e-4 --epochs=256 --weight_decay=0 | tee -a log/training.txt
