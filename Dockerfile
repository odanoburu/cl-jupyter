FROM debian:9

RUN apt-get update \
    && apt-get install -y \
    python3 python3-pip \
    sbcl libzmq3-dev curl \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash lisper

USER lisper

WORKDIR /home/lisper

RUN curl -O https://beta.quicklisp.org/quicklisp.lisp && sbcl --eval '(load "quicklisp.lisp")' --eval '(progn (quicklisp-quickstart:install) (sb-ext:exit))' && echo '(load "~/quicklisp/setup.lisp")' >> ~/.sbclrc

RUN pip3 install --user jupyter ipython

ENV PATH ipython $PATH:/home/lisper/.local/bin/

COPY . ./

RUN python3 ./install-cl-jupyter.py && sbcl --load ./cl-jupyter.lisp

EXPOSE 8888

CMD jupyter-notebook --no-browser --NotebookApp.token='' --ip '*' --port 8888
