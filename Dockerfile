FROM pytorch/pytorch:2.6.0-cuda12.6-cudnn9-runtime

WORKDIR /ComfyUI
COPY /ComfyUI ./

RUN pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu126
RUN pip install -r requirements.txt

ARG PORT
ENV PORT=${PORT}

EXPOSE ${PORT}

CMD ["python", "main.py"]
