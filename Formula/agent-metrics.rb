class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.11"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.11/agent-metrics-0.5.11-aarch64-apple-darwin.tar.gz"
      sha256 "04818d8904dee259924c83e4b3c8bf0fbce98e1760279cbc979af88d95149936"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.11/agent-metrics-0.5.11-x86_64-apple-darwin.tar.gz"
      sha256 "d1827419fadf52cfb40449e5b5bc68f3a28739f8a8a4a4aac12365d3faa7bb17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.11/agent-metrics-0.5.11-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f67ef8e4e2c9bc9fd7eba6d6da6d1f9c496c93407ac4417c0891892e0b6134e9"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.11/agent-metrics-0.5.11-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e644d91ac466c0cf33277cee7df1d7301e7746d814526a02b0afb31d0908ba4d"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
