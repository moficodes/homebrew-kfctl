class Kfctl < Formula
  desc "Install Kubeflow on Kubernetes cluster"
  homepage "https://kubeflow.org"
  url "https://github.com/kubeflow/kfctl/archive/d959287540c3faecbf9abc3a541315794a0acc47.zip"
  sha256 "8c0d4c70b4de36afbc9d8abdd30c98b80e49cda82abb1dfa9490831e5e66f5fb"

  depends_on "go" => :build

  def install
    system "make", "build"
    system "cp", "bin/kfctl", "/usr/local/bin"
  end

  test do
    system "false"
  end

end
