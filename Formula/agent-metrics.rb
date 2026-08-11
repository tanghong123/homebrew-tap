class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.1.0"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.0/agent-metrics-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "d08963fc29f2d20d31d3f75666c6022f51f60f493443aa5227a4cce96d70c058"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.0/agent-metrics-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "34da12b0d291e1827b370aac31d56f4fdf38095d7e491fcd667538b8ce323092"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.0/agent-metrics-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f4b577e0e0fef47bff4bd17ff3b914e8b4781b2ddfbdeb8ea0cda3a5d91c7890"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.0/agent-metrics-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e90d92e786f66ae56e9639d577fa3bb9bebdff094e027a6d718d8dca08fb8b81"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
