class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.2.0"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.2.0/agent-metrics-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "9c310f74078e804ea1c7c7fcb046f0f9ef88a6a05f209f7319e5b55d97a8e783"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.2.0/agent-metrics-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "65dd59a4f3a402d75e1af8f10362f5134c7c6587a163410ce7b5943824a725ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.2.0/agent-metrics-0.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c5e8014d0de0117c62ea8fbac0c2451918d1dbee8bd3a9631efcc27f542af4fa"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.2.0/agent-metrics-0.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fff121e2abc3d297a5418d642329754f014aeaf3f026697566df446cf21e374f"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
