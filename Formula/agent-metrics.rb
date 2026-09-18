class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.6.0"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.6.0/agent-metrics-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "69d9b0698fc03e0d3566a3ed1e5be683b649ef2379ce6a731ae748effdd1f6da"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.6.0/agent-metrics-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "5fa11e800f4e9446806fa064688adcb35849319ef65b2c17dd9323ccfb053e7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.6.0/agent-metrics-0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e152f2d1e120d776ad61d00182af6a95abfb4d991c1f5ca0175a2fb9738a301f"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.6.0/agent-metrics-0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1032b034413cd68700c0b0df321580f38d531176f61f752bd0817af3a20bbfc1"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
