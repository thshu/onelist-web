MakeRelease(){
    mkdir compress
    tar -czvf compress/dist.tar.gz dist
    rm -f dist
    cd compress
    find . -type f -print0 | xargs -0 md5sum >md5.txt
    cat md5.txt
    cd ../..
}


yarn install
npm run build
MakeRelease
