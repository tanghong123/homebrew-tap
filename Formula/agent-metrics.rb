class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.28"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.28/agent-metrics-0.5.28-aarch64-apple-darwin.tar.gz"
      sha256 "1985ecd06c8c0bb95ea4290e6b112087a889fbcc2b5305f0ff47e6d73e29d1e0"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.28/agent-metrics-0.5.28-x86_64-apple-darwin.tar.gz"
      sha256 "3022ff72fe0d1ebdb881c502fa597e93c92aba188c45354c664fc767665ae364"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.28/agent-metrics-0.5.28-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c04666ea593634b2526bae6e6359574c6f4dff11316ae4caf47e38d19eff6bff"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.28/agent-metrics-0.5.28-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0dac71728985188713f9ce10e49b7fc6301524b3752dac85d352e39bcd90aad8"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
