class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.3.1"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.1/agent-metrics-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "499023faa8d7986de35d8d9ce79a00b0ede0afd03e966f6aa7fbf8c930c61376"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.1/agent-metrics-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "2d831265feae41314e7e601fc52bd5477e31f9fbf716038be8048bd54a3fd159"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.1/agent-metrics-0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dc5dfa7e98f117c07c6ab21add4bf31ff6a3dd19a8bef064aafc3eafd834e948"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.3.1/agent-metrics-0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "01cd41eb2df3af6685faf44a3df0491a62aa54ff9d888348a449caf5cb6a8ed2"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
