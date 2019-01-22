FROM golang:1.11.4

RUN apt-get update && apt-get install -y vim

RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ADD ./.vimrc /root/.vimrc

RUN vim -c PlugInstall -c q -c q
RUN vim -c GoInstallBinaries -c q -c q 

ENTRYPOINT ["/usr/bin/vim"]
