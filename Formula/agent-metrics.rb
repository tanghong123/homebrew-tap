class AgentMetrics < Formula
  desc "Usage metrics for every coding agent on a machine, built on claude-replay"
  homepage "https://github.com/tanghong123/homebrew-tap"
  version "0.1.2"
  license "MIT"

  # Binary-only distribution (the knack pattern): the source repository is
  # private; prebuilt binaries ship as release assets on this tap itself.
  on_macos do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.2/agent-metrics-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "c9bdb9f04c375c8d0678db9a0eeab14eb054a4700a80c8221fd3ab951ca6a1a1"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.2/agent-metrics-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "a2ebb5040d385fc73ff0415ebb28d2b9874c4e0ff34cb17725bf8bf0872ba9da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.2/agent-metrics-0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "38d88575dc443d2d89c6e5d55bafad5c39d909f4ebd8bcee00a9e79a5ef365f3"
    end
    on_intel do
      url "https://github.com/tanghong123/homebrew-tap/releases/download/agent-metrics-0.1.2/agent-metrics-0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89bc4d0c169afc2006792992d6b1377ab0a108244e271c3fcd9e2b5d6473d5c9"
    end
  end

  def install
    bin.install "agent-metrics"
  end

  test do
    assert_match "agent-metrics #{version}", shell_output("#{bin}/agent-metrics --version")
  end
end
