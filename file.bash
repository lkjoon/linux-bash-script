#1/bin/bash/
#파일 테스트

file=$1

if [ $# -ne 1 ]
then
	echo "파일 인자 넣어라"
fi


if [ -e $file ]

then
	wc $file
else
	echo "파일이 없습니다~"
fi


