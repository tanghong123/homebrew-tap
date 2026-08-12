class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.3.0"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.0/agent-metrics-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "99997e6733f7e1ce69c66f631cb50bf19dd1daee009a588f87bd8bbf3d2ad62b"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.0/agent-metrics-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "b6a7b48bab08cfc2d1f51b1bb474f29c50c292bb298b8a52c6d3b46bccdc283c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.0/agent-metrics-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ad97f8a74b639b4946100b931a408246a92793298775b399c1c00dc160f6cf8"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.0/agent-metrics-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e5c45b41ad2bc445e17763a60155e9e0de9f296a5cbbb801b5c9802bc60d0869"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
