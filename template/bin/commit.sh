if [ $1 ]; then
	echo '-=[切换至dev分支并提交]=-'
	git checkout dev
	echo '-=[推送修改至dev分支]=-'
	git add *
	git commit -am $1
	git push
else
	echo '请添加注释'
fi