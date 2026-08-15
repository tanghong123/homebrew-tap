class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.17"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.17/agent-metrics-0.5.17-aarch64-apple-darwin.tar.gz"
      sha256 "7a37e737349b30bbcd0b243db4dcb2c1e2b4704cddb587d9683e85562e7d3c66"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.17/agent-metrics-0.5.17-x86_64-apple-darwin.tar.gz"
      sha256 "dfadac9ff0c5e629df830e1e272d85ca477adc404edd2a9251c6b150e30240dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.17/agent-metrics-0.5.17-aarch64-unknown-linux-musl.tar.gz"
      sha256 "414490155c546fdde801c524a4d41ba390f890cbc959c3ab0f9ee35bc60221a7"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.17/agent-metrics-0.5.17-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cbd6156258a713c8c9cfbca35676b48e57991ed0bcfa6685b43094b9d8c71811"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
