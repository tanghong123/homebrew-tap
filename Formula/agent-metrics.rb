class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.14"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.14/agent-metrics-0.5.14-aarch64-apple-darwin.tar.gz"
      sha256 "ff3fc09ccb93a774fb057785310147d09b11ed18289cfc268c4016ac77b302bf"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.14/agent-metrics-0.5.14-x86_64-apple-darwin.tar.gz"
      sha256 "ffecd10cb689fc4c186db3c113903860ab60245f35b1edd131da032c641d3750"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.14/agent-metrics-0.5.14-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d6e1f6e675b54d8090060f4e0ce39e4077056cb4eb20323020c877c3d3b80ed"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.14/agent-metrics-0.5.14-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f0197b9d8caa43f32d80d664896a98481bcccfd645b3c057df5dc8596697bdfd"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
