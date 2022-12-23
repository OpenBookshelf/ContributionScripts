sudo echo "Let's Go"
wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
gunzip install-tl-unx.tar.gz
tar -xf install-tl-unx.tar.gz
rm install-tl-unx.tar.gz
cd install-tl-*/
echo "i" | sudo perl install-tl
cd ../
rm -rf install-tl-*/
cd /usr/local/texlive/*/texmf-dist/doc/man
MANPATH=$PWD:$MANPATH
echo "MANPATH=$PWD:\$MANPATH" >> ~/.bashrc
cd /usr/local/texlive/*/texmf-dist/doc/info
INFOPATH=$PWD:$INFOPATH
echo "INFOPATH=$PWD:\$INFOPATH" >> ~/.bashrc
cd /usr/local/texlive/20*/bin/*-linux
PATH=$PWD:$PATH
echo "PATH=$PWD:\$PATH" >> ~/.bashrc
# 2020, there was a bug in xepersian. The following 2 lines are for that. Now, they seem to be fixed.
# sed -i "s|\\etex|\\tex|g" /usr/local/texlive/*/texmf-dist/tex/xelatex/xepersian/xepersian-mathsdigitspec.sty
# sed -i "s|\\etex|\\tex|g" /usr/local/texlive/*/texmf-dist/source/xelatex/xepersian/xepersian.dtx