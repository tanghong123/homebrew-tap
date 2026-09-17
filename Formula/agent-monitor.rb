class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.275.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "743404bdadc993d754364834fa291e86532a3e4722e9d678fa22b094776686f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c0aa12e640aeae22735df8eac36c0340dc6096dd4178551fd3148f4373a29090"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cf6d02e48530705ab48f7d37a6b8d37b5e7b68bc25c31f375c2b56cd6c7e4a15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.275.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63187fb5b5e071c70993c149bb8afbf1331a1c40d1c4f89903116f26b64dba8c"
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
