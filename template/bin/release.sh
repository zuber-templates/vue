function master() {
	echo '-=[代码合并至主分支]=-'
	git checkout master
	git merge --no-ff dev -m $1
	git push
}

function release() {
	echo -=[切换至$1分支]=-
	{
		git branch $1
	} || {
		echo -=[$1分支已创建]=-
	}
	git checkout $1
	git merge --no-ff master -m $2
	echo '-=[打包项目]=-'
	npm run build -- $1
	echo '-=[发布中...]=-'
	git add *
	git add dist -f
	git commit -am $2
	git push --set-upstream origin $1
	echo -=[发布至$1分支成功]=-
}

if [ $1 == 'beta' ] || [ $1 == 'preview' ] || [ $1 == 'release' ]; then
	if [ $2 ]; then
		sh bin/commit.sh $2
		master $2
		release 'beta' $2
		if [ $1 == 'preview' ] || [ $1 == 'release' ]; then release 'preview' $2; fi
		if [ $1 == 'release' ]; then release 'release' $2; fi
		echo '-=[切换回dev分支并开放编辑]=-'
		git checkout dev
		chmod -R 777 *
	else
		echo '请填写提交注释'
	fi
else
	echo '请选择发布到一个有效的分支：beta, preview, release'
fi