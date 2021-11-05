#!/usr/bin/env bash

read -p 'Xcode関連ファイルを全て削除します. 実行してよろしいですか? (y/n):' yn

# 「y」と入力されなかった場合は中止する.
if [ ! "${yn}" = 'y' ]; then
  echo '中止します.'
  exit 1
fi

rm -r /Applications/Xcode.app
rm /Library/Preferences/com.apple.dt.Xcode.plist
rm ~/Library/Preferences/com.apple.dt.Xcode.plist
rm ~/Library/Caches/com.apple.dt.Xcode
rm -r ~/Library/Application Support/Xcode
rm -r ~/Library/Developer/Xcode
rm -r ~/Library/Developer/CoreSimulator
