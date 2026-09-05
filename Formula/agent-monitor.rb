class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.188.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2b5345e162f8d6c4b9587f8b43ae01a31c4dfa2f492d93257858b0f315866589"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e8cc6abe9aaa2aa0013ac70dc46a124055971762ef39cf3a62609d31f47e6179"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e8c3a9c026cee8ae0c55fcc2aa01fac7c0c73ee71ad8284cf0b9c6d668a096f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4ad194c5f233ee2638bd6d3981b5c9845869ef340a6088645d4a148046dc8651"
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
