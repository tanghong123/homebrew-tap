class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.1"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.1/agent-metrics-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "04df834b413e1702225531732ca1f8f0913a59360552fb965acec759c08ec5d6"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.1/agent-metrics-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "a1941e51352082e4d517ea5698bab0e0f2cec1c6f85dd4707ee43aa0af7c978d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.1/agent-metrics-0.5.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dd471c0cf843dc6960fba9612fb4d87c4290e1595ff0f64c0909080ea261626d"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.1/agent-metrics-0.5.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d3192d9f696aa56804b16eb205c150c6883c0fc7ae0868409a500e4630a8160"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
