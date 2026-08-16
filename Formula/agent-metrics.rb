class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.18"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.18/agent-metrics-0.5.18-aarch64-apple-darwin.tar.gz"
      sha256 "0ddc6d622b8f8952dc948d23c4948d68f948a9b63adb56a00585fbc8c855cb57"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.18/agent-metrics-0.5.18-x86_64-apple-darwin.tar.gz"
      sha256 "1a496c659e001f101c53b816fe66581bd81b1fe199a8c43a94587c2fc6885868"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.18/agent-metrics-0.5.18-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c17b9a567b6b34e07fd03f0d97d0de07dbd2aafeb0f8e852ecb16821c28fb42"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.18/agent-metrics-0.5.18-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e1e36b5b1ebbf4a66a4b922f1712506bc73346a93cff2bb535a8404fe5ae7a1a"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
