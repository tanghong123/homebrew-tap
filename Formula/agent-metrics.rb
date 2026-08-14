class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.8"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.8/agent-metrics-0.5.8-aarch64-apple-darwin.tar.gz"
      sha256 "d2ce9c8283b5281677461b3c693831a66396f16cd33af926acd5a1664ef6890b"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.8/agent-metrics-0.5.8-x86_64-apple-darwin.tar.gz"
      sha256 "80aa21846ffcd1b3dcab148ae38011f9a660738d8f9ae961f89befc37756d973"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.8/agent-metrics-0.5.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7911d5c3ac968efd85857f6ff41b8b0bc9de84969cea496caf778bc68b9057b8"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.8/agent-metrics-0.5.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dbd6ee9e5616263347d2f08f72b227e871dc542687b5e0a7c0648a23c03c59ee"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
