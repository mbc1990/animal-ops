# Deploy everything from scratch on a single host
# Installs dependencies, compiles caffe

# System needs: git, virtualenv, python

# dir where predator saves images
mkdir to_be_classified

# images that have been processed by the classifier
mkdir classified

# Predator 
git clone https://github.com/mbc1990/predator.git
virtualenv predator
source predator/bin/activate
# pip install -r predator/requirements.txt
