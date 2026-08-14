class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.6"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.6/agent-metrics-0.5.6-aarch64-apple-darwin.tar.gz"
      sha256 "f94aa5f0c87419d4111b8360794075b80f516135d71be6585300900810be9ddb"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.6/agent-metrics-0.5.6-x86_64-apple-darwin.tar.gz"
      sha256 "61b4af55274c5a49db3fe17feb3b21080b1d3eb118f3c24b77074f4bc54e75d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.6/agent-metrics-0.5.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e0972b62ddefdd4dfc08bc037a79e2c0791e2799c9dbb2bd225821db920cd25"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.6/agent-metrics-0.5.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "29bbf708b175cc47fd15dfbfbf5894a4edf8eb3037d1519b64885601a40a05a1"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
