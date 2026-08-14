class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.12"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.12/agent-metrics-0.5.12-aarch64-apple-darwin.tar.gz"
      sha256 "117aa62b47f67569ac7507567a9c254f863e7bef204e254a436f50fa482e68cf"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.12/agent-metrics-0.5.12-x86_64-apple-darwin.tar.gz"
      sha256 "6c04ddd89f76e9609619075275f827b97e7a21d3ffdbffb051495cff2eee52c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.12/agent-metrics-0.5.12-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d10a21226d27f3be9f8823c212bd38bdad79d203ce072418607ae81fa5f7fb3"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.12/agent-metrics-0.5.12-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e85d99d21cf82d7a3618f4cf5f6837d72820da4c79258bef0e488560e89cbaa7"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
