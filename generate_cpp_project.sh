dir=$(pwd)
if [ -z "$1" ]
then
    name=project
else
    name=$1
fi

mkdir $dir/build
mkdir $dir/src
mkdir $dir/include
touch $dir/CMakeLists.txt
touch $dir/src/main.cpp
cp ~/conf/.ycm_extra_conf.py $dir

echo "#include <iostream>\n\nint main(int argc, char** argv)\n{\n\treturn 0;\n}\n" >> $dir/src/main.cpp


echo "cmake_minimum_required(VERSION 3.8)" >> $dir/CMakeLists.txt
echo "project($name)" >> $dir/CMakeLists.txt
echo "\n" >>$dir/CMakeLists.txt
echo "set(CMAKE_CXX_STANDARD 17)" >> $dir/CMakeLists.txt
echo "set(CMAKE_CXX_STANDARD_REQUIRED ON)" >>$dir/CMakeLists.txt
echo "set(CMAKE_CXX_EXTENSIONS OFF)" >>$dir/CMakeLists.txt
echo "set(CMAKE_EXPORT_COMPILE_COMMANDS ON)" >>$dir/CMakeLists.txt
echo "\n" >>$dir/CMakeLists.txt

echo "include_directories(include)" >> $dir/CMakeLists.txt
echo "add_executable($name src/main.cpp)" >> $dir/CMakeLists.txt

cd $dir/build
cmake .. && make
cd ..

