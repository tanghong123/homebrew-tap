class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.84.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bcf1750f96ec235b1393d86a32b61cc7158c0082bb00160777fc0e27b60c9a83"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d24c821adf397f64f5404ae8518f999272723c57ea636ab69114761afcbeace5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "063b924f3c935627b847e01514599e7b966df6b5385c2aa7b750d5924c8b5593"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.84.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f4b87dd6a8cc00774a91c3dd035f5e91d315ca16f81c0c56878227e17ecc4298"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
