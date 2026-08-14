class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.5"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.5/agent-metrics-0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "d16a131d7fe0399adc665796e0b752d125674e842f42fbf79671914fda2eb02b"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.5/agent-metrics-0.5.5-x86_64-apple-darwin.tar.gz"
      sha256 "65894470ff5a0a76e71b7bd517a80d26d00c012f7323d50c2070121f25e73a56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.5/agent-metrics-0.5.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "88fb2a18140342b6dd8968d5f9846e18567218048fbef44b89d3a86fe575b5b9"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.5/agent-metrics-0.5.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "656e00cf8347a053e79721d84a59eb57e54b11fe7bce902f76594590158518f4"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
