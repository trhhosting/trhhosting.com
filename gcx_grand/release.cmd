rm -rf release
rm release.zip
pub run build_runner build -o web:release --release --delete-conflicting-outputs
7z a release.zip release