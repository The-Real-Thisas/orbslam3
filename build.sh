echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir build
cd build
apt install libboost-dev 
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j
cd ../../

echo "Configuring and building Thirdparty/g2o ..."

cd g2o
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j
cd ../../

echo "Configuring and building Thirdparty/Sophus ..."

cd Sophus
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j

cd ../../../

echo "Uncompress vocabulary ..."

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

# echo "Installing Pangolin ..."
# cd Pangolin
# cmake -B build -GNinja
# cmake --build build
# cd ..

echo "Configuring and building ORB_SLAM3 ..."

mkdir build
cd build
apt update
apt install -y libopencv-dev
cmake .. -DCMAKE_BUILD_TYPE=Release  -DPangolin_DIR=/ORB_SLAM3/Pangolin/build
make -j4
