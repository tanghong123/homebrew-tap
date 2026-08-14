class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.9"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.9/agent-metrics-0.5.9-aarch64-apple-darwin.tar.gz"
      sha256 "3bc14321e8a7987f86c7bc763cdb2f2ef9e6555224df423796f0ed67fe8b0b53"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.9/agent-metrics-0.5.9-x86_64-apple-darwin.tar.gz"
      sha256 "f867ee9e812c6205d9834d32ad3a490b298fefffe2ac7e61313d5732a2b91e03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.9/agent-metrics-0.5.9-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca30260a8267f4a1c7cbe03325694dc28cef0b4c881dff523fa48d71ed612698"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.9/agent-metrics-0.5.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2dca45b99773eae3adc21b06e6917fb1cf7bab3e1395540b20318d93fd177706"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
