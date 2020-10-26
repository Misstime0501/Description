#!/bin/bash
case "$1" in
	"cloud")
		sh build.sh clean
		sh build.sh npm
		echo "ip 设置为云平台 ip"
		sed -i  "" 's/118.102.25.201/172.13.29.171/g' .env.development
		sed -i  "" 's/118.102.25.201/172.13.29.171/g' .env.production
		sh build.sh build
	;;
	"localhost") 
		sh build.sh npm
		echo "ip 设置为本地访问外网 ip"
		sed -i  "" 's/172.13.29.171/118.102.25.201/g' .env.development
		sed -i  "" 's/172.13.29.171/118.102.25.201/g' .env.production
		sh build.sh build
	;;
	"npm") 
		echo "执行了 npm install"
		# npm install
	;;
	"build") 
		echo "执行了 npm run build"
		# npm run build
	;;
	"clean") 
		echo "执行了清除操作"
		rm -r -f dist
	;;
	*)
	echo "屁玩意儿都没干"
esac