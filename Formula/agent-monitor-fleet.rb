class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.376.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "41b24c9beff5f5ccef8ec31cbefdf03bbbaff3aa39866681bea7ccceb29fd68e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4c152eebca5e9fa635b17e3fd17e3435783f4099893c5890215560e7808234f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1cbc6f654ced02c880f791153fc5c2e13601616473ed28c87b0ed6b3ad1f3be7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.376.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "75a9dac76acdd0af26363415aafa3f81265f1aeb7e3513c358f383b6d074ebbd"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
