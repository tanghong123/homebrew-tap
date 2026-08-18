class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.21"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.21/agent-metrics-0.5.21-aarch64-apple-darwin.tar.gz"
      sha256 "baeac0d972fab145a53c09aaeffa43866978a73ef80845410e1673661009b1bd"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.21/agent-metrics-0.5.21-x86_64-apple-darwin.tar.gz"
      sha256 "2d835e11fe20f6d9affbb3624272bb7bf5833dff78444a9d0c92eabf3bb1a519"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.21/agent-metrics-0.5.21-aarch64-unknown-linux-musl.tar.gz"
      sha256 "23f04370a1bc7640d18dfe57f4b0228479a52e5cf6998348de7c57049b332695"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.21/agent-metrics-0.5.21-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e2ebd56d3dda804d7f88485bb43faf9eda1d3a0779ae4b45c8bd009d06ab48fe"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
