del CMakeCache.txt
cmake -T v140_xp -G "Visual Studio 15 2017" .
MSBuild /p:Configuration=Release /p:Platform="Win32" hello16.sln
