class Bpb < Formula
  desc "boats' personal barricade"
  homepage "https://github.com/withoutboats/bpb"
  url "https://github.com/indirect/bpb/archive/de2b7be4eef4342ff54bd9bc84de0c5363264480.zip"
  version "1.2.0"
  sha256 "d24cf6c09e7497e5b38d85b6d52d51be9209163e44ac253ada6a84d801db5326"

  bottle do
    root_url "https://github.com/indirect/homebrew-tap/releases/download/bpb-v1.2.0"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "f947366c4bb526a4c1d80d63dfca4b50ada8326279e738c47c375f1cc25d3bd8"
    sha256 cellar: :any_skip_relocation, big_sur:       "7232cdecdf15817783ade2e1162e64d1937a3401fc6d799de733e348c451b509"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  test do
    system "#{bin}/bpb", "--help"
  end
end
