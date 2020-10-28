class Kfctl < Formula
  desc "Install Kubeflow on Kubernetes cluster"
  homepage "https://kubeflow.org"
  url "https://github.com/kubeflow/kfctl/archive/v1.1.0.tar.gz"
  sha256 "b8765c128a9a0f3fabb5e77080bf4f139b0138454ea4313dbfdeb96c0adf9d39"

  depends_on "go" => :build

  def install
    system "make", "build"
    system "cp", "bin/kfctl", "/usr/local/bin"
  end

  test do
    system "false"
  end

end