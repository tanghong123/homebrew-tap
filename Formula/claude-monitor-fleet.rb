class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.76.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6b9bf788413cdcc7d4bec205005af8e9806e191aea7a1cc501992b3e8e8b34fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "918f7faf3e20dde10e61a66528e20dbed78ba00734dba4ca99204260101347a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ae948111cf432f8138f94865cfdc19e8663e80f230bec5c1abefab7fa4e2dfa2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83477d61bd75b176f60967675ddc944f6f6693b437164378b0526677d21c5d8d"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
