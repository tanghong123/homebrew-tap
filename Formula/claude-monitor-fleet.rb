class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.90.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "131534a3cab67ddef6a953233270bd5c92a97ba6cee4405a1120e4e76be74b06"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0f3c687e6b2cc720e6695436617f4076aaea978ae118ad479ffcf09ff4540939"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f0be1980c2b77216f851882b68518eb5381d3104d013495c6ce28a2960247a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27e952633082b5fb703f35c822443d9034ce2056eb6ef6b57b76752c5cfc0107"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
