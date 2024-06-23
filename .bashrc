alias amd='git commit --amend'
alias amdne='git commit --amend --no-edit'
alias rebase-dev='git fetch && git rebase origin/dev'
alias prune='git fetch --prune && git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
alias build_runner="dart run build_runner build --delete-conflicting-outputs"
alias apksigner="~/AppData/Local/Android/Sdk/build-tools/33.0.0-rc4/apksigner.bat"
alias bundletool="java -jar ~/Development/bundletool-all-1.15.4.jar"
alias universalapk="~/Development/universal_apk.sh"
alias cleanget="flutter clean && flutter pub get"
alias android="dart /mnt/shared/repos/app_builder/build_android.dart"


# Roda o build runner somente para o diretório passado como parâmetro dentro de models/
function build_dir() { flutter pub run build_runner build --delete-conflicting-outputs --build-filter="lib/app/models/$1/**"; } 
function rename_branch() { git branch -m $1 $2; git push origin :$1; git branch --unset-upstream $2; git push origin -u $2; }