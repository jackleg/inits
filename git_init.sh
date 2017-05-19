#!/bin/bash

git config --global color.ui true
# linux/mac에서 crlf 설정.
# 윈도우에서는 git config --global core.autocrlf true 로 설정한다.
git config --global core.autocrlf input
# 현재 branch만 push한다. matching인 경우는 match되는 모든 branch를 push.
git config --global push.default simple
# 오래된 버전인 경우에는 current 사용.
#git config --global push.default current
# pull 할 때 fetch - merge 하는게 아니라 fetch - rebase 한다.
git config --global pull.rebase true
# -s 옵션을 주면 status 내용이 간단해진다.
git config --global alias.s "status -s"
# 로그 내용을 좀 더 보기 편하게 한다.
git config --global alias.lg "log --oneline --decorate --all --graph"
# git repository의 branch 색상 자동 설정
git config --global color.branch auto
# git repository의 diff 색상 자동 설정
git config --global color.diff auto
# git repository의 대화식 command prompt의 글씨 색상 자동 설정
git config --global color.interactive auto
# git repository의 status 명령어로 출력되는 글씨 색상 자동 설정
git config --global color.status auto
# git에서 사용할 편집기 설정
git config --global core.editor "vim"
# git에서 사용할 merge tool을 vimdiff로 설정
git config --global merge.tool vimdiff
