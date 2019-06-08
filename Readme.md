run docker :
docker run -it multiloom
docker run --link containerId:9999 -it multiloom

install Vim on docker
apt-get update
apt-get install vim wget

download
wget https://private.delegatecall.com/loom/linux/build-208/loom
chmod +x loom

configuration

gen loom nodekey
./loom nodekey

(
172.17.0.3:0c6dbbcd336e:d644e3194dd645e441c47969469b155a10b92aa2
172.17.0.2:c4a830039fe1:0023e7942e1511c30dbe974042256a4d7bc9562e
)

loom connect
./loom run --persistent-peers tcp://<node1_key>@<node1_ip>:46656,tcp://<node2_key>@<node2_ip>:46656,...tcp://<nodeN_key>@<nodeN_ip>:

test deploy

muon ket noi phai download ban khac
