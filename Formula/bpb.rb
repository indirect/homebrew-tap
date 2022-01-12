class Bpb < Formula
  desc "boats' personal barricade"
  homepage "https://github.com/withoutboats/bpb"
  url "https://github.com/indirect/bpb/archive/refs/tags/v1.3.0.zip"
  version "1.3.0"
  sha256 "709445fe34c0ac21448728db6814c90617daf8afef105ba0e72a8dc6b9e3611d"

  bottle do
    root_url "https://github.com/indirect/homebrew-tap/releases/download/bpb-v1.3.0"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "32aab73b4787032370652c27329c828d33d0239492bc54bedc0dfa7bf366aaee"
    sha256 cellar: :any_skip_relocation, monterey: "946359bcb8e97f63fdab8a52d27ad912e8e8c03748211da413c26b29a5ae7b37"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    system "#{bin}/bpb", "--help"
  end
end
