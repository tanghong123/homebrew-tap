class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.19"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.19/agent-metrics-0.5.19-aarch64-apple-darwin.tar.gz"
      sha256 "31cb5e3f0801f8fd03bd91df157ebae31321a9d637b0f5f420b6109171f10a31"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.19/agent-metrics-0.5.19-x86_64-apple-darwin.tar.gz"
      sha256 "dcc9419cb727203fe664bd72ac0cf8efbdfd814ff64312ab5f58d70ef1d9ab70"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.19/agent-metrics-0.5.19-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08145fa7759d1494924f9e10316136262058578430ff2ea4c05e312ccbb7d119"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.19/agent-metrics-0.5.19-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6f20c998a63e5033528ef97f7feb247b8259313981d6c2c05d8f4afcb9d301f7"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
