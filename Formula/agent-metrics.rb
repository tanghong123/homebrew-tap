class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.29"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.29/agent-metrics-0.5.29-aarch64-apple-darwin.tar.gz"
      sha256 "70eb67ccb2e93b7620c2926195852a3ebbc29bd14f7f3ae88be00c4c51357778"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.29/agent-metrics-0.5.29-x86_64-apple-darwin.tar.gz"
      sha256 "e1fe9304854e78faa57783af43e2df8dabed4f9a48b362345c23d41bd2f695a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.29/agent-metrics-0.5.29-aarch64-unknown-linux-musl.tar.gz"
      sha256 "658bab4a127549c5c1c9312b6478a8e3d291e5c791fcfa66ca6572a17519a309"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.29/agent-metrics-0.5.29-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c64b8d69964b2fcf4bdb797da3cfc162d0e9baabab0feb65119122727dfb1ede"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
