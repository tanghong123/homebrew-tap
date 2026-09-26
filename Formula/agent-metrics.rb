class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.7.1"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.7.1/agent-metrics-0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "1a4293c7330820df4c4da914eb862ed7b7d2e485f7e31902aa9e53bc986b6c94"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.7.1/agent-metrics-0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "857244070b6e2d3045c869ed01e40d3837e62745be47cd5975a238e4c6104d7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.7.1/agent-metrics-0.7.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "abe706244218d8bfd5ee7ae5828d88f6adad54d376da2dfb93e1e47275c03f65"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.7.1/agent-metrics-0.7.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2fc387f5341a2db827a7311e83bace34b2f4357ad5e4099dfe20fbb8a24c2e87"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
