class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.291.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "420b00c52d8051195c4687b69297c0cab4b2b2d7c37e1ce915775ce88dc2ee7c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c896c3716798a57ab3eca6df339fb86b49eb829602f37f067fbee849e05fc611"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0dea241c1aa2adc376f10f0380b40646b5cdf10ebc3ea85a4e4cd974e9474fe9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.291.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "593ea394b29f1033959de7dde5ded903dd333c0132bc74d86a6974a9be0494c2"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
