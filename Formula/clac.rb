class Clac < Formula
  desc "A command line, stack-based calculator with postfix notation"
  homepage "https://github.com/soveran/clac/"
  url "https://github.com/soveran/clac/archive/d5a113ea578c42ddd65b40203ada72dde85cc217.tar.gz"
  sha256 "e10d94dc996e864e42b7cdf5ed365790d32619327426642c56a3721a0385d463"

  def install
    ENV["PREFIX"] = prefix
    system "make", "install"
  end

  test do
    File.exist?("#{bin}/clac")
  end
end
