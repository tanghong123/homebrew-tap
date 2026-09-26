class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.8.1"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.8.1/agent-metrics-0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "0e100dfd4aefe78cacd5e36970872df3669456e35c6a8ad9d5ec89c9f342882b"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.8.1/agent-metrics-0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "74f4136ec1df16c4a439f5a9e9ab0c26f6fb47e1c0a2d99e96195a658ea8342a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.8.1/agent-metrics-0.8.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2e87b08b8012b1e5a880982c9f558e4e098d98cde1633a825335947135349b1d"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.8.1/agent-metrics-0.8.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9faacc651760bed7a847c7a26af734d2d0f75d9cd6df83bba6d1d2e90fceb158"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
