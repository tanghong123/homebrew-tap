class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.3"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.3/agent-metrics-0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "9575b0446e21c12c7e78401cbe5c8cdf58b72f40e3a863c13e33108f5a94b23c"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.3/agent-metrics-0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "1f436db6aac187eb78d96df25ad8acf0e2d68fafbc3b1f009e0eb34cb97f4dba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.3/agent-metrics-0.5.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b33d2712e64c41a1250bb59f256d58ee6a5b40f27ea0659c8f0071319c69008"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.3/agent-metrics-0.5.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "078994ed09ebce4bb882696f6a53a66d1837d2e226a1c0d14dae5625e826f4ab"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
