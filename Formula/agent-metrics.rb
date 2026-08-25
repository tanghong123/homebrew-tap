class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.26"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.26/agent-metrics-0.5.26-aarch64-apple-darwin.tar.gz"
      sha256 "4740c0fd73211f0b39032a15518dcb519b14e0f7276f1d1ac274fa6a69964a43"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.26/agent-metrics-0.5.26-x86_64-apple-darwin.tar.gz"
      sha256 "2e67734ce532e4e1bfa015e3cde3d12e7f57aeb01406d5b53fbc1e0a86cbb06f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.26/agent-metrics-0.5.26-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8201240701608dc48e967c9162ed86a1572e173130f6dcbfc305f8433eef103"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.26/agent-metrics-0.5.26-x86_64-unknown-linux-musl.tar.gz"
      sha256 "45fd2fdbf5f8b6a1c75af1889e2d97f635e11d1e12e6a143a1df8c23bbb92a4d"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
