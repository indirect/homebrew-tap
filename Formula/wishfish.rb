class Wishfish < Formula
  desc "SSH wrapper that binds to a specific network interface"
  homepage "https://github.com/claui/wishfish"
  url "https://github.com/claui/wishfish/archive/v0.0.2.tar.gz"
  sha256 "57ba2044eff81fadbd4e80db06cdc984f82e797038f0a1eeca24255518267ac7"

  def install
    %w[wishfish ipv6_address].each do |bin_name|
      (bin/bin_name).write <<~EOS
        #!/bin/bash
        exec "#{libexec/bin_name}" "$@"
      EOS

      libexec.install [
        "bin/#{bin_name}",
        "libexec/#{bin_name}.bash",
      ]
    end

    doc.install "LICENSE.md", "README.md"
  end

  test do
    assert_match /^Usage:\s*wishfish/,
      shell_output("#{bin}/wishfish; [ $? -eq 1 ]")
    assert_match /^Usage:\s*ipv6_address/,
      shell_output("#{bin}/ipv6_address; [ $? -eq 1 ]")
  end
end
