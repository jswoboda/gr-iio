PACKAGE_DIR=$(python -c "import site; print(site.getsitepackages()[0])")
GRADIO_PREFIX=$(gnuradio-config-info --prefix)
mkdir build
cd build

cmake -DGR_DATA_DIR=${GRADIO_PREFIX}/share/gnuradio -DCMAKE_INSTALL_PREFIX=${GRADIO_PREFIX} -DGR_PYTHON_DIR=${PACKAGE_DIR} ..
make
sudo make install
