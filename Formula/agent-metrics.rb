class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.6.1"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.6.1/agent-metrics-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "d63fdde697ceee783e4e6a2dba818b02f4b4fb6e8d3864f1bf38ade818e70450"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.6.1/agent-metrics-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "caa8eac4cd7d62296e0d355744a72180e9612e32d3bbc011064c95f2f1f865f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.6.1/agent-metrics-0.6.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "28cdd6d6747e5395db9486562b0016dfd077cd83130c05bd61d7195fc4fed26c"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.6.1/agent-metrics-0.6.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a3cb155aa8a384244d44dfc933a841cc908cc83eeb14949854bd96317d258783"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
