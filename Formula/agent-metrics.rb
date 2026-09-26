class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.7.0"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.7.0/agent-metrics-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "1d781b7054c60343136c376bc899e9432edf8627581c37d778503c18ae8b811f"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.7.0/agent-metrics-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "238ec928ee8da138c8d132dfb55d2427160e4ac273e1ed1888246d4311b8174e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.7.0/agent-metrics-0.7.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d33cbad0eb97651f7eb1a396561298eae82be46144bac80ed5794e9d3bb7e780"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.7.0/agent-metrics-0.7.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "15fe34b7cf8769c68e7b7ad1b5fd4d5a437a04d26525e6425d04fb976c9a6999"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
