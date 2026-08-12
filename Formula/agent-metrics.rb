class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.3.2"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.2/agent-metrics-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "d44f4392b3589d6ae7814ca3ee96ea8b43355c03f977c9b210424f26dc4ac937"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.2/agent-metrics-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "f645cec03e75f9572c822382bbc7ed9654c0597401bd933a2e1d246b86e15d0d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.2/agent-metrics-0.3.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e4a9c949a76c893ed3a9b18a691463eb51da84c55d4bf499dd1f81b52c138c1d"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.2/agent-metrics-0.3.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a0d9fe3be063470c39a1b856c53c3d56b21b3d506f3d900af8407afbf6d41ac"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
