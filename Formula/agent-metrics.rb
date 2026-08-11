class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.1.1"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.1/agent-metrics-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "d15a3c42b79887a24f8a4b652c864ca8c2216e82e45ae49b8aa47e66713cb4e2"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.1/agent-metrics-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "9bd5350787ab8e6ac16b8fda9ac00db2f20bf14405676663c7bdf3d75ec8f040"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.1/agent-metrics-0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "96da89b3f3624fe0cba45e665bc3458f4729c666d426505742d1a894bd50bd57"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.1/agent-metrics-0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d4f1508a54be282b9642b63da414f61a30c557f5fc1ac23877b25230f1f82d42"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
