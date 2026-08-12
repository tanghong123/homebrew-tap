class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.5.2"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.2/agent-metrics-0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "050c882e1c92af84d506cead751f304eb749a5231b6177543ab63a589769669a"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.2/agent-metrics-0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "d5183594408a36348037457165984c1907857772c9edcd7cefacf10b43889baa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.2/agent-metrics-0.5.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e25a277f4a08e0ff134cb36dc5ccdfd5e155fddf8fa8073965f108cf54715cf"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.5.2/agent-metrics-0.5.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "84d2a8d5c77799ba55e0084310e8c6c862c32711dbe35052904483d0817151a0"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
