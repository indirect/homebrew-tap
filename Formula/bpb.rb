class Bpb < Formula
  desc "boats' personal barricade"
  homepage "https://github.com/withoutboats/bpb"
  url "https://github.com/withoutboats/bpb/archive/b1ef5ca1d2dea0e2ec0b1616f087f110ea17adfa.zip"
  version "1.1.0"
  sha256 "18fd7d11dca61d9bec49cbed963c484678e38f8b8886025cd0528ff3ad678564"

  # Building this depends on Rust 2018, which is not yet available in Homebrew
  # depends_on "rust" => :build
  env :std

  def install
    cp_r "/Users/andre/.rustup", ENV["HOME"]
    mkdir "#{ENV['HOME']}/.cargo"
    cp_r "/Users/andre/.cargo/registry", "#{ENV['HOME']}/.cargo"
    system "rustup", "default", "nightly"
    system "cargo", "install", "--path", ".", "--root", prefix
  end

  bottle do
    root_url "https://github.com/indirect/homebrew-tap"
    cellar :any_skip_relocation
    sha256 "77e800d51b1f55317eb903c0472eca6b284f6ce4f3df166490f9e2cc4965d3e5" => :high_sierra
  end

  test do
    system "#{bin}/bpb", "--help"
  end
end
