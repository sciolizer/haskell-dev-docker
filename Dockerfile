FROM wting/lambdabot:4.3.0.1

RUN apt-get install -y curl=7.22.0-3ubuntu4.8
RUN apt-get install -y zsh=4.3.17-1ubuntu1
RUN curl -L http://install.ohmyz.sh | zsh
RUN apt-get install -y git=1:1.7.9.5-1
RUN cabal install goa-3.2
ADD .ghci /root/.ghci
RUN cabal install boomerang-1.4.3
RUN cabal install c2hs-0.17.2
RUN apt-get install -y libncursesw5-dev=5.9-4
RUN cabal install ncurses-0.2.10
RUN apt-get install -y screen=4.0.3-14ubuntu8
RUN mkdir /root/git
RUN git clone https://github.com/sciolizer/zendo.git /root/git/zendo
