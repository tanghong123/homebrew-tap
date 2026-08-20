class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "464022c46525b8ecdce2c4db95fc18891e3e7f9fa0db3fa30b5c586f767ca7ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "bf2c08f0c6048642beb08bb39aa53e0023d5ca2fd4a7e331d26371fed23da7ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f750dc4a670b721005bc29d68a4af0178bcc2acc22a4b2c85385fc01914de81"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.4/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b86988a2a690ea39194b0df8c43514dbd436298264e992be968f74432f55dd73"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
