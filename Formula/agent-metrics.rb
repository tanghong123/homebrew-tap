class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.7"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.7/agent-metrics-0.5.7-aarch64-apple-darwin.tar.gz"
      sha256 "66a625936e09cd472cda0890a97e3c4967bfcd247c7abb0b10c36ab20e64eb3d"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.7/agent-metrics-0.5.7-x86_64-apple-darwin.tar.gz"
      sha256 "e8c89052a66b47dad388e87b44647ef831bd5d29a2abd834ff4c12c2bbc752d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.7/agent-metrics-0.5.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52b6aea3e1f2c618183c1572648bc4665a4db7bccd152822373454975bbb8677"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.7/agent-metrics-0.5.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f3c16419728cc9c966f27bd3de907bad448c6b496fa376addf2e1457d8e36be"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
