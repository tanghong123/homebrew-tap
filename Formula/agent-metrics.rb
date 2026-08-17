class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.20"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.20/agent-metrics-0.5.20-aarch64-apple-darwin.tar.gz"
      sha256 "54c7b2344de5336dac5fd6e3986e570f5843e67b9de503ba73739d307a540d24"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.20/agent-metrics-0.5.20-x86_64-apple-darwin.tar.gz"
      sha256 "ab6cc7340353dcbd8d78ac450b26d24cdc9f228a39b023e2239e0b9d4419a6cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.20/agent-metrics-0.5.20-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0d369b09b9edc52d121711c40f66d9664eccb4bf7942b0a5cfed8cbdf367ca47"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.20/agent-metrics-0.5.20-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e07832ff63ea5a6d1768697bdc7f295733531af25848a5f7009ba8ba1e0301c4"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
