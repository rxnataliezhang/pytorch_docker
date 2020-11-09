docker container run -itd \
    --name gpu_env \
    --runtime=nvidia -u rxzhang \
    --mount type=bind,source=/data/rxzhang/dataset,target=/home/rxzhang/dataset \
    --mount type=bind,source=/data/rxzhang/checkpoints,target=/home/rxzhang/checkpoints \
    --shm-size=16g rxzhang/pytorch:gpu /bin/zsh \
|| \
docker container exec -it gpu_env /bin/zsh


# sudo docker container run -itd \
# 	--rm \
# 	--gpus all \
# 	-p 7777:22 \
# 	--name gpu_zrx \
# 	--runtime=nvidia \
# 	-u rxzhang \
# 	--mount type=bind,source=/home/rxzhang/workspace,target=/home/rxzhang/workspace \
# 	--shm-size=16g rxzhang/pytorch_docker:gpu /bin/zsh