set -ex

# python -m uv pip install --upgrade uv pip

uv pip install --no-cache-dir packaging ninja numpy pandas ipython ipykernel gdown wheel setuptools
uv pip install --no-cache-dir transformers==4.53.3
# 添加国内镜像
# uv pip install --no-cache-dir torch==2.7.0 torchvision==0.22.0 torchaudio==2.7.0 \
#   -i https://pypi.tuna.tsinghua.edu.cn/simple \
#   --extra-index-url https://download.pytorch.org/whl/cu128
uv pip install --no-deps ~/torch_wheels/torch-*.whl ~/torch_wheels/torchvision-*.whl ~/torch_wheels/torchaudio-*.whl
uv pip install --no-cache-dir transformers==4.53.3
# uv pip install --no-cache-dir flash-attn==2.8.1 --no-build-isolation
uv pip install --no-cache-dir vllm==0.9.2
uv pip install --no-cache-dir verl==0.5.0

uv pip install --no-cache-dir -e .[dev,agent]