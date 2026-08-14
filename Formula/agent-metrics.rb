class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.10"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.10/agent-metrics-0.5.10-aarch64-apple-darwin.tar.gz"
      sha256 "dc00720e6c5fd216f6d16f9618e9dde41673d73d79253f302f392f72f9bfc8bf"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.10/agent-metrics-0.5.10-x86_64-apple-darwin.tar.gz"
      sha256 "13e78181abd51d13423f6a3fda2c3b5dca9b769e3d28fea152b74e3d0653a6db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.10/agent-metrics-0.5.10-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d95281d0cedc37d29a4ac6403a44a3e0d2001c587babf7e8958044eed489e556"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.10/agent-metrics-0.5.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fd2aa66704e85fd3503c8d5f05079f952f9ac2e0ace81f0eb5578c528d31a027"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
