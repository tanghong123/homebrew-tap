class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.0"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.0/agent-metrics-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa22850dab80b518e30d7efcc054f9e2aaff11eb3d30364a4bd134f0317f0e40"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.0/agent-metrics-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "92e8a4ecce201d71075cc49ccabebcae111370fc63a3051ffa81b9e21354b3ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.0/agent-metrics-0.5.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "437f9941c6139b7270b2083397b73240362e39d543e77777910bfd4f04bb9c16"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.0/agent-metrics-0.5.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e689d457f3d51f880332b0ebe9eeaf326a32c1b3d13b3099ed298319c3974796"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
