class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.25"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.25/agent-metrics-0.5.25-aarch64-apple-darwin.tar.gz"
      sha256 "994f2960d7003b25ff3d66ec1319c55969dc4034c13590eac6a5a6db32ac2434"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.25/agent-metrics-0.5.25-x86_64-apple-darwin.tar.gz"
      sha256 "77d0b8064c0703658fc419f96e9d5f6725d2480e9bb1fc7014c8b05c2da937e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.25/agent-metrics-0.5.25-aarch64-unknown-linux-musl.tar.gz"
      sha256 "46b86c38e9e49238ddd09df3d2a9d1735f0c6e5e12a6b3905ced12f1d4ce50a5"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.25/agent-metrics-0.5.25-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2c9c5c061049f49696df1b9f4a541976d48a50b1d0e38e3d4e7c489f44d241e5"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
