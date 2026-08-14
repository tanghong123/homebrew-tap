class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.15"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.15/agent-metrics-0.5.15-aarch64-apple-darwin.tar.gz"
      sha256 "1c389440c61761b91a3a7348270ba10d40bae6ad8f7a6bc4a3b78a1097a9a1ec"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.15/agent-metrics-0.5.15-x86_64-apple-darwin.tar.gz"
      sha256 "fc0fbf062a90e72720688eb470a7c4b026f6952200f6f2e17e4e454938d057d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.15/agent-metrics-0.5.15-aarch64-unknown-linux-musl.tar.gz"
      sha256 "23281d756fe9a1bec0a17803acfe270874ab37c43c11264f64dc556563c5acfc"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.15/agent-metrics-0.5.15-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a3c45693a86cb0fe11c0dae602cd63d0fb035f0819235f29062ba4018e4ef626"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
