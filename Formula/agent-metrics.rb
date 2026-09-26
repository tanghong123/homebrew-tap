class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.8.0"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.8.0/agent-metrics-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "e2b72ef1afa356c2388fe269fd134b9a1c5033db06ba4a24fe7e4c6771ea01fd"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.8.0/agent-metrics-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "58fbbb41e99daa9ad22ec6308572cc5885ab9d7352e08e8c6a7fa1cd057a596a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.8.0/agent-metrics-0.8.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3944107d9f64aa53d38136403ff0884f3be98ce23921e0f0201c97577b5ec949"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.8.0/agent-metrics-0.8.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b24ddd45ec97a2563b534fc64d2e6b9122e707970c0b5ec373f67b2e5e6446d6"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
