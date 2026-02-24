cd ..
git clone --depth 1 --recursive -b v2.8.3 https://github.com/Dao-AILab/flash-attention.git
git clone --depth 1 https://github.com/mit-han-lab/torchsparse.git

conda install -c conda-forge gcc_linux-64=11 gxx_linux-64=11 -y
conda install -c conda-forge sparsehash -y

pip install wheel setuptools ninja

pip3 install torch torchvision torchaudio \
  --index-url https://download.pytorch.org/whl/cu124

pip install transformers trimesh scikit-image diffusers \
  gradio peft einops numpy tqdm hydra-core matplotlib \
  opencv-python imageio easydict munch plyfile pymeshlab \
  sophuspy fast_simplification scikit-learn timm plotly \
  torchdiffeq sentencepiece protobuf pyrender jupyter \
  rootpath

pip install "imageio[ffmpeg]" "imageio[pyav]"
pip install torch-cluster -f https://data.pyg.org/whl/torch-2.6.0+cu124.html

cd flash-attention
python setup.py install

cd ../torchsparse
python setup.py install
